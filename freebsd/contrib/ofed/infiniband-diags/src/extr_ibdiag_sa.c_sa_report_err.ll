; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_sa.c_sa_report_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_sa.c_sa_report_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c" (%s; %s; %s)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"BUSY\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Redirection Required\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" SA(%s)\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"ERROR: Query result returned 0x%04x, %s%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sa_report_err(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 255
  store i32 %7, i32* %3, align 4
  %8 = bitcast [64 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 64, i1 false)
  %9 = bitcast [64 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 64, i1 false)
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 2
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 2
  %26 = call i8* @ib_mad_inv_field_err_str(i32 %25)
  %27 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %23, i8* %26)
  br label %28

28:                                               ; preds = %12, %1
  %29 = load i32, i32* %2, align 4
  %30 = ashr i32 %29, 8
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %35 = load i32, i32* %3, align 4
  %36 = call i8* @ib_sa_err_str(i32 %35)
  %37 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* %2, align 4
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %43 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %40, i8* %41, i8* %42)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i8* @ib_mad_inv_field_err_str(i32) #2

declare dso_local i8* @ib_sa_err_str(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
