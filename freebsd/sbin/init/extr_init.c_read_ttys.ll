; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_read_ttys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_read_ttys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.ttyent = type { i32 }

@sessions = common dso_local global %struct.TYPE_6__* null, align 8
@single_user = common dso_local global i32 0, align 4
@multi_user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_ttys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ttys() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.ttyent*, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sessions, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %2, align 8
  br label %6

6:                                                ; preds = %15, %0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = call i32 @free_session(%struct.TYPE_6__* %13)
  br label %15

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %2, align 8
  br label %6

17:                                               ; preds = %6
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @sessions, align 8
  %18 = call i64 (...) @start_session_db()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @single_user, align 4
  store i32 %21, i32* %1, align 4
  br label %37

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %33, %22
  %24 = call %struct.ttyent* (...) @getttyent()
  store %struct.ttyent* %24, %struct.ttyent** %4, align 8
  %25 = icmp ne %struct.ttyent* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = load %struct.ttyent*, %struct.ttyent** %4, align 8
  %29 = call %struct.TYPE_6__* @new_session(%struct.TYPE_6__* %27, %struct.ttyent* %28)
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %3, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %2, align 8
  br label %33

33:                                               ; preds = %31, %26
  br label %23

34:                                               ; preds = %23
  %35 = call i32 (...) @endttyent()
  %36 = load i32, i32* @multi_user, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %34, %20
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @free_session(%struct.TYPE_6__*) #1

declare dso_local i64 @start_session_db(...) #1

declare dso_local %struct.ttyent* @getttyent(...) #1

declare dso_local %struct.TYPE_6__* @new_session(%struct.TYPE_6__*, %struct.ttyent*) #1

declare dso_local i32 @endttyent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
