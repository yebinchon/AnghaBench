; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_opt.c_opt_number_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_opt.c_opt_number_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strstr_pair_st = type { i8*, i8* }
%struct.strstr_pair_st.0 = type { i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"a hexadecimal\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0X\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"an octal\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"%s: Can't parse \22%s\22 as %s number\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"%s: Can't parse \22%s\22 as a number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @opt_number_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opt_number_error(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [3 x %struct.strstr_pair_st], align 16
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = bitcast [3 x %struct.strstr_pair_st]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 48, i1 false)
  %6 = bitcast i8* %5 to [3 x %struct.strstr_pair_st]*
  %7 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.strstr_pair_st, %struct.strstr_pair_st* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %8, align 16
  %9 = getelementptr inbounds %struct.strstr_pair_st, %struct.strstr_pair_st* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8** %9, align 8
  %10 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %6, i32 0, i32 1
  %11 = getelementptr inbounds %struct.strstr_pair_st, %struct.strstr_pair_st* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds %struct.strstr_pair_st, %struct.strstr_pair_st* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %6, i32 0, i32 2
  %14 = getelementptr inbounds %struct.strstr_pair_st, %struct.strstr_pair_st* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds %struct.strstr_pair_st, %struct.strstr_pair_st* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8** %15, align 8
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %45, %1
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %4, i64 0, i64 0
  %19 = bitcast %struct.strstr_pair_st* %18 to %struct.strstr_pair_st.0*
  %20 = call i64 @OSSL_NELEM(%struct.strstr_pair_st.0* %19)
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load i8*, i8** %2, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %4, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.strstr_pair_st, %struct.strstr_pair_st* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 16
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %4, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.strstr_pair_st, %struct.strstr_pair_st* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 16
  %32 = call i32 @strlen(i8* %31)
  %33 = call i64 @strncmp(i8* %23, i8* %27, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %22
  %36 = load i32, i32* @bio_err, align 4
  %37 = load i32, i32* @prog, align 4
  %38 = load i8*, i8** %2, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds [3 x %struct.strstr_pair_st], [3 x %struct.strstr_pair_st]* %4, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.strstr_pair_st, %struct.strstr_pair_st* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i32, i8*, i32, i8*, ...) @BIO_printf(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %37, i8* %38, i8* %42)
  br label %53

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %16

48:                                               ; preds = %16
  %49 = load i32, i32* @bio_err, align 4
  %50 = load i32, i32* @prog, align 4
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 (i32, i8*, i32, i8*, ...) @BIO_printf(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %48, %35
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @OSSL_NELEM(%struct.strstr_pair_st.0*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @BIO_printf(i32, i8*, i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
