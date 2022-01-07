; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_search_eol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_search_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32* }
%struct.evbuffer_ptr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evbuffer_search_eol(%struct.evbuffer_ptr* noalias sret %0, %struct.evbuffer* %1, %struct.evbuffer_ptr* %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.evbuffer*, align 8
  %7 = alloca %struct.evbuffer_ptr*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.evbuffer_ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.evbuffer_ptr, align 8
  %14 = alloca i64, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %6, align 8
  store %struct.evbuffer_ptr* %2, %struct.evbuffer_ptr** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 %4, i32* %9, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %16 = icmp ne %struct.evbuffer_ptr* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %5
  %18 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %19 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = call i32 @PTR_NOT_FOUND(%struct.evbuffer_ptr* %0)
  %25 = load i64*, i64** %8, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* %11, align 8
  %29 = load i64*, i64** %8, align 8
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %23
  br label %117

31:                                               ; preds = %17, %5
  %32 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %33 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %32)
  %34 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %35 = icmp ne %struct.evbuffer_ptr* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %38 = call i32 @memcpy(%struct.evbuffer_ptr* %0, %struct.evbuffer_ptr* %37, i32 24)
  br label %48

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %42 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %39, %36
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %101 [
    i32 132, label %50
    i32 130, label %57
    i32 131, label %66
    i32 129, label %91
    i32 128, label %96
  ]

50:                                               ; preds = %48
  %51 = call i32 @evbuffer_find_eol_char(%struct.evbuffer_ptr* %0)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %103

54:                                               ; preds = %50
  %55 = call i32 @memcpy(%struct.evbuffer_ptr* %10, %struct.evbuffer_ptr* %0, i32 24)
  %56 = call i64 @evbuffer_strspn(%struct.evbuffer_ptr* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %56, i64* %11, align 8
  br label %102

57:                                               ; preds = %48
  %58 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  call void @evbuffer_search(%struct.evbuffer_ptr* sret %13, %struct.evbuffer* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, %struct.evbuffer_ptr* %0)
  %59 = bitcast %struct.evbuffer_ptr* %0 to i8*
  %60 = bitcast %struct.evbuffer_ptr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 24, i1 false)
  %61 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %103

65:                                               ; preds = %57
  store i64 2, i64* %11, align 8
  br label %102

66:                                               ; preds = %48
  %67 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %14, align 8
  %69 = call i32 @evbuffer_strchr(%struct.evbuffer_ptr* %0, i8 signext 10)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %103

72:                                               ; preds = %66
  store i64 1, i64* %11, align 8
  %73 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %0, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %14, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %102

78:                                               ; preds = %72
  %79 = call i32 @memcpy(%struct.evbuffer_ptr* %10, %struct.evbuffer_ptr* %0, i32 24)
  %80 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %81 = call i32 @evbuffer_ptr_subtract(%struct.evbuffer* %80, %struct.evbuffer_ptr* %10, i32 1)
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %102

84:                                               ; preds = %78
  %85 = call signext i8 @evbuffer_getchr(%struct.evbuffer_ptr* %10)
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 13
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 @memcpy(%struct.evbuffer_ptr* %0, %struct.evbuffer_ptr* %10, i32 24)
  store i64 2, i64* %11, align 8
  br label %90

90:                                               ; preds = %88, %84
  br label %102

91:                                               ; preds = %48
  %92 = call i32 @evbuffer_strchr(%struct.evbuffer_ptr* %0, i8 signext 10)
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %103

95:                                               ; preds = %91
  store i64 1, i64* %11, align 8
  br label %102

96:                                               ; preds = %48
  %97 = call i32 @evbuffer_strchr(%struct.evbuffer_ptr* %0, i8 signext 0)
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %103

100:                                              ; preds = %96
  store i64 1, i64* %11, align 8
  br label %102

101:                                              ; preds = %48
  br label %103

102:                                              ; preds = %100, %95, %90, %83, %77, %65, %54
  store i32 1, i32* %12, align 4
  br label %103

103:                                              ; preds = %102, %101, %99, %94, %71, %64, %53
  %104 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %105 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %104)
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = call i32 @PTR_NOT_FOUND(%struct.evbuffer_ptr* %0)
  br label %110

110:                                              ; preds = %108, %103
  %111 = load i64*, i64** %8, align 8
  %112 = icmp ne i64* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i64, i64* %11, align 8
  %115 = load i64*, i64** %8, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %110
  br label %117

117:                                              ; preds = %116, %30
  ret void
}

declare dso_local i32 @PTR_NOT_FOUND(%struct.evbuffer_ptr*) #1

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @memcpy(%struct.evbuffer_ptr*, %struct.evbuffer_ptr*, i32) #1

declare dso_local i32 @evbuffer_find_eol_char(%struct.evbuffer_ptr*) #1

declare dso_local i64 @evbuffer_strspn(%struct.evbuffer_ptr*, i8*) #1

declare dso_local void @evbuffer_search(%struct.evbuffer_ptr* sret, %struct.evbuffer*, i8*, i32, %struct.evbuffer_ptr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @evbuffer_strchr(%struct.evbuffer_ptr*, i8 signext) #1

declare dso_local i32 @evbuffer_ptr_subtract(%struct.evbuffer*, %struct.evbuffer_ptr*, i32) #1

declare dso_local signext i8 @evbuffer_getchr(%struct.evbuffer_ptr*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
