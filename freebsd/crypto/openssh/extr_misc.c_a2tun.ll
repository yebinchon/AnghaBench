; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_a2tun.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_a2tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSH_TUNID_ANY = common dso_local global i32 0, align 4
@SSH_TUNID_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"any\00", align 1
@SSH_TUNID_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @a2tun(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = load i32, i32* @SSH_TUNID_ANY, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @xstrdup(i8* %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 58)
  store i8* %18, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @free(i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @a2tun(i8* %23, i32* null)
  store i32 %24, i32* %3, align 4
  br label %64

25:                                               ; preds = %12
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @a2tun(i8* %30, i32* null)
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @a2tun(i8* %33, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SSH_TUNID_ERR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  br label %46

44:                                               ; preds = %25
  %45 = load i32, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i32 [ %43, %41 ], [ %45, %44 ]
  store i32 %47, i32* %3, align 4
  br label %64

48:                                               ; preds = %2
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 @strcasecmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @SSH_TUNID_ANY, align 4
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %48
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* @SSH_TUNID_MAX, align 4
  %57 = call i32 @strtonum(i8* %55, i32 0, i32 %56, i8** %6)
  store i32 %57, i32* %9, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @SSH_TUNID_ERR, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %60, %52, %46, %20
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
