; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_authtrust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_authtrust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@KEY_TRUSTED = common dso_local global i32 0, align 4
@current_time = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @authtrust(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_4__* @auth_findkey(i32 %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %61

15:                                               ; preds = %11, %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @authcache_flush_id(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load i32, i32* @KEY_TRUSTED, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i8*, i8** @current_time, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %41

38:                                               ; preds = %23
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i8* null, i8** %40, align 8
  br label %41

41:                                               ; preds = %38, %31
  br label %45

42:                                               ; preds = %18
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = call i32 @freesymkey(%struct.TYPE_4__* %43)
  br label %45

45:                                               ; preds = %42, %41
  br label %61

46:                                               ; preds = %15
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i8*, i8** @current_time, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %6, align 4
  br label %56

55:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @KEY_TRUSTED, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @allocsymkey(i32 %57, i32 %58, i32 0, i32 %59, i32 0, i32* null, i32* null)
  br label %61

61:                                               ; preds = %56, %45, %14
  ret void
}

declare dso_local %struct.TYPE_4__* @auth_findkey(i32) #1

declare dso_local i32 @authcache_flush_id(i32) #1

declare dso_local i32 @freesymkey(%struct.TYPE_4__*) #1

declare dso_local i32 @allocsymkey(i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
