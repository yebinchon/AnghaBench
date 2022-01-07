; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libdes/extr_t_des.c_fail_cfb_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libdes/extr_t_des.c_fail_cfb_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s /\00", align 1
@cfb_buf1 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @fail_cfb_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fail_cfb_buf(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %8, align 16
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 24
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %14 = load i32*, i32** @cfb_buf1, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i8* @pt(i32* %17)
  %19 = call i32 @snprintf(i8* %13, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %22 = call i32 @strlcat(i8* %20, i8* %21, i32 1024)
  br label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 8
  store i32 %25, i32* %6, align 4
  br label %9

26:                                               ; preds = %9
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %29 = call i32 @atf_tc_fail_nonfatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @pt(i32*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @atf_tc_fail_nonfatal(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
