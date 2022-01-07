; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_compat.c_proto_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_compat.c_proto_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSH_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@SEP = common dso_local global i32 0, align 4
@SSH_PROTO_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ignoring bad proto spec: '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_spec(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @SSH_PROTO_UNKNOWN, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** %4, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %13
  %21 = load i32, i32* @SEP, align 4
  %22 = call i8* @strsep(i8** %6, i32 %21)
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %44, %20
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  br i1 %32, label %33, label %47

33:                                               ; preds = %31
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @atoi(i8* %34)
  switch i32 %35, label %40 [
    i32 2, label %36
  ]

36:                                               ; preds = %33
  %37 = load i32, i32* @SSH_PROTO_2, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @logit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* @SEP, align 4
  %46 = call i8* @strsep(i8** %6, i32 %45)
  store i8* %46, i8** %5, align 8
  br label %23

47:                                               ; preds = %31
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %18, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @logit(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
