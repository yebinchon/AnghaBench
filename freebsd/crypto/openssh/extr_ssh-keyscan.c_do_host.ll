; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keyscan.c_do_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keyscan.c_do_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@KT_MIN = common dso_local global i32 0, align 4
@KT_MAX = common dso_local global i32 0, align 4
@get_keytypes = common dso_local global i32 0, align 4
@ncon = common dso_local global i64 0, align 8
@MAXCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_host(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i8* @strnnsep(i8** %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  %10 = load i32, i32* @KT_MIN, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %42, %9
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @KT_MAX, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load i32, i32* @get_keytypes, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i64, i64* @ncon, align 8
  %23 = load i64, i64* @MAXCON, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (...) @conloop()
  br label %21

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i8*, i8** %2, align 8
  br label %37

35:                                               ; preds = %27
  %36 = load i8*, i8** %3, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i8* [ %34, %33 ], [ %36, %35 ]
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @conalloc(i8* %28, i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %15
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 %43, 2
  store i32 %44, i32* %4, align 4
  br label %11

45:                                               ; preds = %8, %11
  ret void
}

declare dso_local i8* @strnnsep(i8**, i8*) #1

declare dso_local i32 @conloop(...) #1

declare dso_local i32 @conalloc(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
