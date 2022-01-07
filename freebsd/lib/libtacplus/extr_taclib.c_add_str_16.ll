; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_add_str_16.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_add_str_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.clnt_str = type { i64, i32* }

@.str = private unnamed_addr constant [15 x i8] c"Field too long\00", align 1
@BODYSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Message too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tac_handle*, i32*, %struct.clnt_str*)* @add_str_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_str_16(%struct.tac_handle* %0, i32* %1, %struct.clnt_str* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tac_handle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.clnt_str*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tac_handle* %0, %struct.tac_handle** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.clnt_str* %2, %struct.clnt_str** %7, align 8
  %10 = load %struct.clnt_str*, %struct.clnt_str** %7, align 8
  %11 = getelementptr inbounds %struct.clnt_str, %struct.clnt_str* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.clnt_str*, %struct.clnt_str** %7, align 8
  %14 = getelementptr inbounds %struct.clnt_str, %struct.clnt_str* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %17, %3
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %22, 65535
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %26 = call i32 @generr(%struct.tac_handle* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %72

27:                                               ; preds = %21
  %28 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %29 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ntohl(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %34, %35
  %37 = load i32, i32* @BODYSIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %42 = call i32 @generr(%struct.tac_handle* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %72

43:                                               ; preds = %27
  %44 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %45 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load %struct.clnt_str*, %struct.clnt_str** %7, align 8
  %53 = getelementptr inbounds %struct.clnt_str, %struct.clnt_str* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @memcpy(i64 %51, i32* %54, i64 %55)
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @htonl(i32 %61)
  %63 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %64 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  br label %66

66:                                               ; preds = %43, %18
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @htons(i64 %67)
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.clnt_str*, %struct.clnt_str** %7, align 8
  %71 = call i32 @free_str(%struct.clnt_str* %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %40, %24
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @generr(%struct.tac_handle*, i8*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @free_str(%struct.clnt_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
