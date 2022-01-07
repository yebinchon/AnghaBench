; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getservent.c_getserv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getservent.c_getserv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }
%struct.key = type { i32 }
%struct.servent_state = type { i8*, i64, %struct.servent }

@errno = common dso_local global i32 0, align 4
@SERVENT_STORAGE_INITIAL = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@SERVENT_STORAGE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.servent* (i32 (i32, %struct.servent*, i8*, i64, %struct.servent**)*, i32)* @getserv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.servent* @getserv(i32 (i32, %struct.servent*, i8*, i64, %struct.servent**)* %0, i32 %1) #0 {
  %3 = alloca %struct.servent*, align 8
  %4 = alloca %struct.key, align 4
  %5 = alloca i32 (i32, %struct.servent*, i8*, i64, %struct.servent**)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.servent*, align 8
  %8 = alloca %struct.servent_state*, align 8
  %9 = getelementptr inbounds %struct.key, %struct.key* %4, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store i32 (i32, %struct.servent*, i8*, i64, %struct.servent**)* %0, i32 (i32, %struct.servent*, i8*, i64, %struct.servent**)** %5, align 8
  %10 = call i32 @servent_getstate(%struct.servent_state** %8)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* @errno, align 4
  store %struct.servent* null, %struct.servent** %3, align 8
  br label %104

15:                                               ; preds = %2
  %16 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %17 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load i64, i64* @SERVENT_STORAGE_INITIAL, align 8
  %22 = call i8* @malloc(i64 %21)
  %23 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %24 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %26 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store %struct.servent* null, %struct.servent** %3, align 8
  br label %104

30:                                               ; preds = %20
  %31 = load i64, i64* @SERVENT_STORAGE_INITIAL, align 8
  %32 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %33 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %15
  br label %35

35:                                               ; preds = %95, %34
  %36 = load i32 (i32, %struct.servent*, i8*, i64, %struct.servent**)*, i32 (i32, %struct.servent*, i8*, i64, %struct.servent**)** %5, align 8
  %37 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %38 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %37, i32 0, i32 2
  %39 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %40 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %43 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.key, %struct.key* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %36(i32 %46, %struct.servent* %38, i8* %41, i64 %44, %struct.servent** %7)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.servent*, %struct.servent** %7, align 8
  %49 = icmp eq %struct.servent* %48, null
  br i1 %49, label %50, label %87

50:                                               ; preds = %35
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ERANGE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %50
  %55 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %56 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %60 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = shl i64 %61, 1
  %63 = load i32, i32* @SERVENT_STORAGE_MAX, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ugt i64 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %68 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %67, i32 0, i32 0
  store i8* null, i8** %68, align 8
  %69 = load i32, i32* @ERANGE, align 4
  store i32 %69, i32* @errno, align 4
  store %struct.servent* null, %struct.servent** %3, align 8
  br label %104

70:                                               ; preds = %54
  %71 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %72 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = shl i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %76 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @malloc(i64 %77)
  %79 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %80 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.servent_state*, %struct.servent_state** %8, align 8
  %82 = getelementptr inbounds %struct.servent_state, %struct.servent_state* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  store %struct.servent* null, %struct.servent** %3, align 8
  br label %104

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %50, %35
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.servent*, %struct.servent** %7, align 8
  %90 = icmp eq %struct.servent* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @ERANGE, align 4
  %94 = icmp eq i32 %92, %93
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i1 [ false, %88 ], [ %94, %91 ]
  br i1 %96, label %35, label %97

97:                                               ; preds = %95
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* @errno, align 4
  br label %102

102:                                              ; preds = %100, %97
  %103 = load %struct.servent*, %struct.servent** %7, align 8
  store %struct.servent* %103, %struct.servent** %3, align 8
  br label %104

104:                                              ; preds = %102, %85, %66, %29, %13
  %105 = load %struct.servent*, %struct.servent** %3, align 8
  ret %struct.servent* %105
}

declare dso_local i32 @servent_getstate(%struct.servent_state**) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
