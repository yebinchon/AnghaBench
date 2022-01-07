; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_establish_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_establish_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"No TACACS+ servers specified\00", align 1
@TAC_SRVR_SINGLE_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tac_handle*)* @establish_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @establish_connection(%struct.tac_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tac_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.tac_handle* %0, %struct.tac_handle** %3, align 8
  %5 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %6 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

10:                                               ; preds = %1
  %11 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %12 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %17 = call i32 @generr(%struct.tac_handle* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %63

18:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %59, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %22 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %19
  %26 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %27 = call i64 @conn_server(%struct.tac_handle* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %31 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %34 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TAC_SRVR_SINGLE_CONNECT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %44 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %2, align 4
  br label %63

45:                                               ; preds = %25
  %46 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %47 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %51 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp uge i64 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %57 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %19

62:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %29, %15, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @generr(%struct.tac_handle*, i8*) #1

declare dso_local i64 @conn_server(%struct.tac_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
