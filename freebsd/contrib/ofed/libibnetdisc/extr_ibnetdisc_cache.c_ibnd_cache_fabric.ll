; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc_cache.c_ibnd_cache_fabric.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc_cache.c_ibnd_cache_fabric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__**, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"fabric parameter NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"file parameter NULL\0A\00", align 1
@IBND_CACHE_FABRIC_FLAG_NO_OVERWRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"error removing '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"file '%s' already exists\0A\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"open: %s\0A\00", align 1
@HTSZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"close: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibnd_cache_fabric(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  store i32 0, i32* %11, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %147

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %147

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @IBND_CACHE_FABRIC_FLAG_NO_OVERWRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @stat(i8* %32, %struct.stat* %8)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @unlink(i8* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @errno, align 4
  %42 = call i8* @strerror(i32 %41)
  %43 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %42)
  store i32 -1, i32* %4, align 4
  br label %147

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %31
  br label %54

46:                                               ; preds = %26
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @stat(i8* %47, %struct.stat* %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  store i32 -1, i32* %4, align 4
  br label %147

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @O_CREAT, align 4
  %57 = load i32, i32* @O_EXCL, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @O_WRONLY, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @open(i8* %55, i32 %60, i32 420)
  store i32 %61, i32* %15, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* @errno, align 4
  %65 = call i8* @strerror(i32 %64)
  %66 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  store i32 -1, i32* %4, align 4
  br label %147

67:                                               ; preds = %54
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = call i64 @_cache_header_info(i32 %68, %struct.TYPE_10__* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %142

73:                                               ; preds = %67
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %9, align 8
  br label %77

77:                                               ; preds = %89, %73
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %10, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %86 = call i64 @_cache_node(i32 %84, %struct.TYPE_9__* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %142

89:                                               ; preds = %80
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %9, align 8
  br label %77

93:                                               ; preds = %77
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %123, %93
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* @HTSZ, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %94
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %100, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %101, i64 %103
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %12, align 8
  br label %106

106:                                              ; preds = %118, %98
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %108 = icmp ne %struct.TYPE_8__* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %13, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %115 = call i64 @_cache_port(i32 %113, %struct.TYPE_8__* %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %142

118:                                              ; preds = %109
  %119 = load i32, i32* %14, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %14, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %12, align 8
  br label %106

122:                                              ; preds = %106
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %94

126:                                              ; preds = %94
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i64 @_cache_header_counts(i32 %127, i32 %128, i32 %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %142

133:                                              ; preds = %126
  %134 = load i32, i32* %15, align 4
  %135 = call i64 @close(i32 %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i32, i32* @errno, align 4
  %139 = call i8* @strerror(i32 %138)
  %140 = call i32 (i8*, ...) @IBND_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %139)
  br label %142

141:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %147

142:                                              ; preds = %137, %132, %117, %88, %72
  %143 = load i8*, i8** %6, align 8
  %144 = call i64 @unlink(i8* %143)
  %145 = load i32, i32* %15, align 4
  %146 = call i64 @close(i32 %145)
  store i32 -1, i32* %4, align 4
  br label %147

147:                                              ; preds = %142, %141, %63, %50, %39, %24, %19
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @IBND_DEBUG(i8*, ...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @_cache_header_info(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @_cache_node(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @_cache_port(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @_cache_header_counts(i32, i32, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
