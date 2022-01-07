; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialogrc.c_dialogrc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialogrc.c_dialogrc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32*, i32* }
%struct.TYPE_3__ = type { i8* }

@dialogrc_config = common dso_local global %struct.TYPE_4__* null, align 8
@setattr = common dso_local global i32 0, align 4
@gauge_color = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dialogrc_free() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %45, %0
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dialogrc_config, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %48

10:                                               ; preds = %3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dialogrc_config, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, @setattr
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %45

18:                                               ; preds = %10
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dialogrc_config, align 8
  %20 = load i64, i64* %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %1, align 8
  %25 = load i8*, i8** %1, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %18
  %28 = load i8*, i8** %1, align 8
  %29 = load i8*, i8** @gauge_color, align 8
  %30 = icmp ne i8* %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dialogrc_config, align 8
  %33 = load i64, i64* %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dialogrc_config, align 8
  %40 = load i64, i64* %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i8* null, i8** %43, align 8
  br label %44

44:                                               ; preds = %31, %27, %18
  br label %45

45:                                               ; preds = %44, %17
  %46 = load i64, i64* %2, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %2, align 8
  br label %3

48:                                               ; preds = %3
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
