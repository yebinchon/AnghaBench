; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i32, i8*, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i64, i64 }

@MAXAVPAIRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tac_handle* @tac_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tac_handle*, align 8
  %3 = call i64 @malloc(i32 80)
  %4 = inttoptr i64 %3 to %struct.tac_handle*
  store %struct.tac_handle* %4, %struct.tac_handle** %2, align 8
  %5 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %6 = icmp ne %struct.tac_handle* %5, null
  br i1 %6, label %7, label %63

7:                                                ; preds = %0
  %8 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %9 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 8
  %10 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %11 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %10, i32 0, i32 12
  store i64 0, i64* %11, align 8
  %12 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %13 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %12, i32 0, i32 11
  store i64 0, i64* %13, align 8
  %14 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %15 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %17, align 1
  %18 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %19 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %18, i32 0, i32 10
  %20 = call i32 @init_clnt_str(i32* %19)
  %21 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %22 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %21, i32 0, i32 9
  %23 = call i32 @init_clnt_str(i32* %22)
  %24 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %25 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %24, i32 0, i32 8
  %26 = call i32 @init_clnt_str(i32* %25)
  %27 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %28 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %27, i32 0, i32 7
  %29 = call i32 @init_clnt_str(i32* %28)
  %30 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %31 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %30, i32 0, i32 6
  %32 = call i32 @init_clnt_str(i32* %31)
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %52, %7
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @MAXAVPAIRS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %39 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @init_clnt_str(i32* %43)
  %45 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %46 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @init_srvr_str(i32* %50)
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %33

55:                                               ; preds = %33
  %56 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %57 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %56, i32 0, i32 3
  %58 = call i32 @init_srvr_str(i32* %57)
  %59 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %60 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %59, i32 0, i32 2
  %61 = call i32 @init_srvr_str(i32* %60)
  %62 = call i32 (...) @srandomdev()
  br label %63

63:                                               ; preds = %55, %0
  %64 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  ret %struct.tac_handle* %64
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @init_clnt_str(i32*) #1

declare dso_local i32 @init_srvr_str(i32*) #1

declare dso_local i32 @srandomdev(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
