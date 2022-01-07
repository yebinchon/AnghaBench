; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c__rtld_is_dlopened.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c__rtld_is_dlopened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@rtld_bind_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"No shared object contains address\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtld_is_dlopened(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @rtld_bind_lock, align 4
  %8 = call i32 @rlock_acquire(i32 %7, i32* %5)
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.TYPE_4__* @dlcheck(i8* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call %struct.TYPE_4__* @obj_from_addr(i8* %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %4, align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i32 @_rtld_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @rtld_bind_lock, align 4
  %22 = call i32 @lock_release(i32 %21, i32* %5)
  store i32 -1, i32* %2, align 4
  br label %33

23:                                               ; preds = %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @rtld_bind_lock, align 4
  %31 = call i32 @lock_release(i32 %30, i32* %5)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %23, %19
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @rlock_acquire(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @dlcheck(i8*) #1

declare dso_local %struct.TYPE_4__* @obj_from_addr(i8*) #1

declare dso_local i32 @_rtld_error(i8*) #1

declare dso_local i32 @lock_release(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
