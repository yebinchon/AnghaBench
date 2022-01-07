; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop_win.c_eloop_register_read_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop_win.c_eloop_register_read_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, %struct.eloop_sock* }
%struct.eloop_sock = type { i32, i64, i32, i8*, i8* }

@WSA_INVALID_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"WSACreateEvent() failed: %d\0A\00", align 1
@FD_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"WSAEventSelect() failed: %d\0A\00", align 1
@eloop = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eloop_register_read_sock(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.eloop_sock*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = call i64 (...) @eloop_prepare_handles()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %87

15:                                               ; preds = %4
  %16 = call i64 (...) @WSACreateEvent()
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @WSA_INVALID_EVENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = call i32 (...) @WSAGetLastError()
  %22 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %5, align 4
  br label %87

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* @FD_READ, align 4
  %27 = call i64 @WSAEventSelect(i32 %24, i64 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = call i32 (...) @WSAGetLastError()
  %31 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @WSACloseEvent(i64 %32)
  store i32 -1, i32* %5, align 4
  br label %87

34:                                               ; preds = %23
  %35 = load %struct.eloop_sock*, %struct.eloop_sock** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 3), align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %37 = add nsw i32 %36, 1
  %38 = call %struct.eloop_sock* @os_realloc_array(%struct.eloop_sock* %35, i32 %37, i32 40)
  store %struct.eloop_sock* %38, %struct.eloop_sock** %11, align 8
  %39 = load %struct.eloop_sock*, %struct.eloop_sock** %11, align 8
  %40 = icmp eq %struct.eloop_sock* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @WSAEventSelect(i32 %42, i64 %43, i32 0)
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @WSACloseEvent(i64 %45)
  store i32 -1, i32* %5, align 4
  br label %87

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.eloop_sock*, %struct.eloop_sock** %11, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.eloop_sock, %struct.eloop_sock* %49, i64 %51
  %53 = getelementptr inbounds %struct.eloop_sock, %struct.eloop_sock* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.eloop_sock*, %struct.eloop_sock** %11, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.eloop_sock, %struct.eloop_sock* %55, i64 %57
  %59 = getelementptr inbounds %struct.eloop_sock, %struct.eloop_sock* %58, i32 0, i32 4
  store i8* %54, i8** %59, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.eloop_sock*, %struct.eloop_sock** %11, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.eloop_sock, %struct.eloop_sock* %61, i64 %63
  %65 = getelementptr inbounds %struct.eloop_sock, %struct.eloop_sock* %64, i32 0, i32 3
  store i8* %60, i8** %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.eloop_sock*, %struct.eloop_sock** %11, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.eloop_sock, %struct.eloop_sock* %67, i64 %69
  %71 = getelementptr inbounds %struct.eloop_sock, %struct.eloop_sock* %70, i32 0, i32 2
  store i32 %66, i32* %71, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.eloop_sock*, %struct.eloop_sock** %11, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.eloop_sock, %struct.eloop_sock* %73, i64 %75
  %77 = getelementptr inbounds %struct.eloop_sock, %struct.eloop_sock* %76, i32 0, i32 1
  store i64 %72, i64* %77, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 0), align 8
  %80 = load %struct.eloop_sock*, %struct.eloop_sock** %11, align 8
  store %struct.eloop_sock* %80, %struct.eloop_sock** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 3), align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %47
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 1), align 4
  br label %86

86:                                               ; preds = %84, %47
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eloop, i32 0, i32 2), align 8
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %41, %29, %20, %14
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @eloop_prepare_handles(...) #1

declare dso_local i64 @WSACreateEvent(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i64 @WSAEventSelect(i32, i64, i32) #1

declare dso_local i32 @WSACloseEvent(i64) #1

declare dso_local %struct.eloop_sock* @os_realloc_array(%struct.eloop_sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
