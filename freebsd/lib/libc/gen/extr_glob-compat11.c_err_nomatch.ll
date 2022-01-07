; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob-compat11.c_err_nomatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob-compat11.c_err_nomatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.glob_limit = type { i32 }

@GLOB_NOCHECK = common dso_local global i32 0, align 4
@GLOB_NOMAGIC = common dso_local global i32 0, align 4
@GLOB_MAGCHAR = common dso_local global i32 0, align 4
@GLOB_NOMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.glob_limit*, i8*)* @err_nomatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @err_nomatch(%struct.TYPE_4__* %0, %struct.glob_limit* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.glob_limit*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.glob_limit* %1, %struct.glob_limit** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GLOB_NOCHECK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GLOB_NOMAGIC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GLOB_MAGCHAR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21, %3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = load %struct.glob_limit*, %struct.glob_limit** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @globextend(i32* null, %struct.TYPE_4__* %29, %struct.glob_limit* %30, i8* %31)
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %21, %14
  %34 = load i32, i32* @GLOB_NOMATCH, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @globextend(i32*, %struct.TYPE_4__*, %struct.glob_limit*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
