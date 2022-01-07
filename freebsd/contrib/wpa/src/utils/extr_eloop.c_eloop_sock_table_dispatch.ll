; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop.c_eloop_sock_table_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop.c_eloop_sock_table_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eloop_sock_table = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 (i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eloop_sock_table*, i32*)* @eloop_sock_table_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eloop_sock_table_dispatch(%struct.eloop_sock_table* %0, i32* %1) #0 {
  %3 = alloca %struct.eloop_sock_table*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.eloop_sock_table* %0, %struct.eloop_sock_table** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %3, align 8
  %7 = icmp eq %struct.eloop_sock_table* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %3, align 8
  %10 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  br label %79

14:                                               ; preds = %8
  %15 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %3, align 8
  %16 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %76, %14
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %3, align 8
  %20 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %79

23:                                               ; preds = %17
  %24 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %3, align 8
  %25 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @FD_ISSET(i32 %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %23
  %36 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %3, align 8
  %37 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %42, align 8
  %44 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %3, align 8
  %45 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %3, align 8
  %53 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %3, align 8
  %61 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %43(i32 %51, i32 %59, i32 %67)
  %69 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %3, align 8
  %70 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %35
  br label %79

74:                                               ; preds = %35
  br label %75

75:                                               ; preds = %74, %23
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %17

79:                                               ; preds = %13, %73, %17
  ret void
}

declare dso_local i64 @FD_ISSET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
