; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_keylen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"rn_init: radix functions require max_keylen be set\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"rn_init\00", align 1
@rn_zeros = common dso_local global i8* null, align 8
@rn_ones = common dso_local global i8* null, align 8
@addmask_key = common dso_local global i8* null, align 8
@mask_rnhead = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"rn_init 2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rn_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @max_keylen, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %36

7:                                                ; preds = %0
  %8 = load i32, i32* @max_keylen, align 4
  %9 = mul nsw i32 3, %8
  %10 = call i64 @rtmalloc(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @rn_zeros, align 8
  %12 = load i8*, i8** @rn_zeros, align 8
  %13 = load i32, i32* @max_keylen, align 4
  %14 = mul nsw i32 3, %13
  %15 = call i32 @Bzero(i8* %12, i32 %14)
  %16 = load i8*, i8** @rn_zeros, align 8
  %17 = load i32, i32* @max_keylen, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %1, align 8
  store i8* %19, i8** @rn_ones, align 8
  %20 = load i8*, i8** @rn_ones, align 8
  %21 = load i32, i32* @max_keylen, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %2, align 8
  store i8* %23, i8** @addmask_key, align 8
  br label %24

24:                                               ; preds = %28, %7
  %25 = load i8*, i8** %1, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %1, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %1, align 8
  store i8 -1, i8* %29, align 1
  br label %24

31:                                               ; preds = %24
  %32 = call i64 @rn_inithead(i32* @mask_rnhead, i32 0)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %5, %34, %31
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @rtmalloc(i32, i8*) #1

declare dso_local i32 @Bzero(i8*, i32) #1

declare dso_local i64 @rn_inithead(i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
