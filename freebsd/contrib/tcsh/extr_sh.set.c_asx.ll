; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_asx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_asx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i32, i32**, i32 }

@VAR_READONLY = common dso_local global i32 0, align 4
@ERR_READONLY = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@G_APPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @asx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asx(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.varent*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.varent* @getvx(i32* %9, i32 %10)
  store %struct.varent* %11, %struct.varent** %7, align 8
  %12 = load %struct.varent*, %struct.varent** %7, align 8
  %13 = getelementptr inbounds %struct.varent, %struct.varent* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @VAR_READONLY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i32, i32* @ERR_READONLY, align 4
  %20 = load i32, i32* @ERR_NAME, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.varent*, %struct.varent** %7, align 8
  %23 = getelementptr inbounds %struct.varent, %struct.varent* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @stderror(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %18, %3
  %27 = load %struct.varent*, %struct.varent** %7, align 8
  %28 = getelementptr inbounds %struct.varent, %struct.varent* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @xfree, align 4
  %37 = call i32 @cleanup_push(i32* %35, i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @G_APPEND, align 4
  %40 = call i32* @globone(i32* %38, i32 %39)
  %41 = load %struct.varent*, %struct.varent** %7, align 8
  %42 = getelementptr inbounds %struct.varent, %struct.varent* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %43, i64 %46
  store i32* %40, i32** %47, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @cleanup_until(i32* %48)
  ret void
}

declare dso_local %struct.varent* @getvx(i32*, i32) #1

declare dso_local i32 @stderror(i32, i32) #1

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i32* @globone(i32*, i32) #1

declare dso_local i32 @cleanup_until(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
