; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_socket.c_maybe_free_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_socket.c_maybe_free_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__**, i32)* @maybe_free_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_free_socket(%struct.TYPE_6__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %5, align 8
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = call i32 @VALID_SOCKET(%struct.TYPE_6__* %9)
  %11 = call i32 @INSIST(i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = call i32 @CONSISTENT(%struct.TYPE_6__* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %67, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %67, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %67, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %67, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %67, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ISC_LIST_EMPTY(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ISC_LIST_EMPTY(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ISC_LIST_EMPTY(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @INVALID_SOCKET, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61, %55, %49, %43, %38, %33, %28, %23, %18, %2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 7
  %70 = call i32 @UNLOCK(i32* %69)
  br label %77

71:                                               ; preds = %61
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 7
  %74 = call i32 @UNLOCK(i32* %73)
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @free_socket(%struct.TYPE_6__** %5, i32 %75)
  br label %77

77:                                               ; preds = %71, %67
  ret void
}

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @VALID_SOCKET(%struct.TYPE_6__*) #1

declare dso_local i32 @CONSISTENT(%struct.TYPE_6__*) #1

declare dso_local i32 @ISC_LIST_EMPTY(i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @free_socket(%struct.TYPE_6__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
