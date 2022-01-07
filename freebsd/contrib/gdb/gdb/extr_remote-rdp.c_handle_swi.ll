; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_handle_swi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdp.c_handle_swi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@.str = private unnamed_addr constant [27 x i8] c"Unimplemented SWI argument\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bbw-\00", align 1
@RDP_OSOpReply = common dso_local global i32 0, align 4
@RDP_OSOpWord = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"bb-\00", align 1
@RDP_OSOpNothing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @handle_swi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_swi() #0 {
  %1 = alloca [3 x %struct.TYPE_3__], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %8 = call i8* (...) @get_word()
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = call i8* (...) @get_byte()
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %86, %0
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %91

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 3
  switch i32 %17, label %84 [
    i32 130, label %18
    i32 128, label %25
    i32 129, label %32
  ]

18:                                               ; preds = %15
  %19 = call i8* (...) @get_byte()
  %20 = ptrtoint i8* %19 to i32
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 16
  br label %86

25:                                               ; preds = %15
  %26 = call i8* (...) @get_word()
  %27 = ptrtoint i8* %26 to i32
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 16
  br label %86

32:                                               ; preds = %15
  %33 = call i8* (...) @get_byte()
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %35, 32
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = call i8* (...) @get_word()
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %3, align 4
  %45 = call i8* @alloca(i32 %44)
  store i8* %45, i8** %2, align 8
  %46 = call i8* (...) @get_word()
  %47 = load i8*, i8** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @remote_rdp_xfer_inferior_memory(i8* %46, i8* %47, i32 %48, i32 0, i32 0, i32 0)
  br label %73

50:                                               ; preds = %32
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i8* @alloca(i32 %52)
  store i8* %53, i8** %2, align 8
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %65, %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = call i8* (...) @get_byte()
  %60 = ptrtoint i8* %59 to i8
  %61 = load i8*, i8** %2, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 %60, i8* %64, align 1
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load i8*, i8** %2, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 0, i8* %72, align 1
  br label %73

73:                                               ; preds = %68, %43
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 16
  %79 = load i8*, i8** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i8* %79, i8** %83, align 8
  br label %86

84:                                               ; preds = %15
  %85 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %73, %25, %18
  %87 = load i32, i32* %6, align 4
  %88 = ashr i32 %87, 2
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %12

91:                                               ; preds = %12
  %92 = load i32, i32* %5, align 4
  %93 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %94 = call i64 @exec_swi(i32 %92, %struct.TYPE_3__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32, i32* @RDP_OSOpReply, align 4
  %98 = load i32, i32* @RDP_OSOpWord, align 4
  %99 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 16
  %102 = call i32 (i8*, i32, i32, ...) @send_rdp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %98, i32 %101)
  br label %107

103:                                              ; preds = %91
  %104 = load i32, i32* @RDP_OSOpReply, align 4
  %105 = load i32, i32* @RDP_OSOpNothing, align 4
  %106 = call i32 (i8*, i32, i32, ...) @send_rdp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %96
  ret void
}

declare dso_local i8* @get_word(...) #1

declare dso_local i8* @get_byte(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @remote_rdp_xfer_inferior_memory(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @exec_swi(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @send_rdp(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
