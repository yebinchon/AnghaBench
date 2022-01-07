; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop_win.c_eloop_unregister_read_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop_win.c_eloop_unregister_read_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@eloop = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eloop_unregister_read_sock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 2), align 8
  %5 = icmp eq %struct.TYPE_4__* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 0), align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %1
  br label %72

10:                                               ; preds = %6
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %25, %10
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 0), align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 2), align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %11

28:                                               ; preds = %23, %11
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 0), align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %72

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 2), align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 2), align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @WSAEventSelect(i32 %38, i32 %43, i32 0)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 2), align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @WSACloseEvent(i32 %49)
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 0), align 8
  %53 = sub i64 %52, 1
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %33
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 2), align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 2), align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 0), align 8
  %64 = load i64, i64* %3, align 8
  %65 = sub i64 %63, %64
  %66 = sub i64 %65, 1
  %67 = mul i64 %66, 4
  %68 = call i32 @os_memmove(%struct.TYPE_4__* %58, %struct.TYPE_4__* %62, i64 %67)
  br label %69

69:                                               ; preds = %55, %33
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 0), align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @eloop, i32 0, i32 1), align 8
  br label %72

72:                                               ; preds = %69, %32, %9
  ret void
}

declare dso_local i32 @WSAEventSelect(i32, i32, i32) #1

declare dso_local i32 @WSACloseEvent(i32) #1

declare dso_local i32 @os_memmove(%struct.TYPE_4__*, %struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
