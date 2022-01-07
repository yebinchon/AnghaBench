; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_write.c_ex_writefp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_write.c_ex_writefp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_12__*, i8*, i32)* }
%struct.TYPE_13__ = type { i64 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"253|Writing...\00", align 1
@INTERRUPT_CHECK = common dso_local global i64 0, align 8
@BUSY_UPDATE = common dso_local global i32 0, align 4
@BUSY_ON = common dso_local global i32 0, align 4
@F_MULTILOCK = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BUSY_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_writefp(%struct.TYPE_12__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3, %struct.TYPE_13__* %4, i64* %5, i64* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.stat, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i32 %7, i32* %16, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %18, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %20, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %21, align 8
  %36 = load i64*, i64** %14, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %8
  %39 = load i64*, i64** %15, align 8
  store i64 0, i64* %39, align 8
  %40 = load i64*, i64** %14, align 8
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %22, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %42 = load i64, i64* %21, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %111

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %105, %44
  %46 = load i64, i64* %20, align 8
  %47 = load i64, i64* %21, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %110

49:                                               ; preds = %45
  %50 = load i64, i64* %22, align 8
  %51 = add nsw i64 %50, 1
  %52 = load i64, i64* @INTERRUPT_CHECK, align 8
  %53 = srem i64 %51, %52
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %49
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = call i64 @INTERRUPTED(%struct.TYPE_12__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %110

60:                                               ; preds = %55
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_12__*, i8*, i32)*, i32 (%struct.TYPE_12__*, i8*, i32)** %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = load i8*, i8** %25, align 8
  %69 = load i8*, i8** %25, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @BUSY_UPDATE, align 4
  br label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @BUSY_ON, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = call i32 %66(%struct.TYPE_12__* %67, i8* %68, i32 %76)
  store i8* null, i8** %25, align 8
  br label %78

78:                                               ; preds = %75, %60
  br label %79

79:                                               ; preds = %78, %49
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %81 = load i64, i64* %20, align 8
  %82 = call i64 @db_rget(%struct.TYPE_12__* %80, i64 %81, i8** %26, i64* %23)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %139

85:                                               ; preds = %79
  %86 = load i8*, i8** %26, align 8
  %87 = load i64, i64* %23, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i64 @fwrite(i8* %86, i32 1, i64 %87, i32* %88)
  %90 = load i64, i64* %23, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %139

93:                                               ; preds = %85
  %94 = load i64, i64* %23, align 8
  %95 = load i64, i64* %19, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %19, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call signext i8 @putc(i8 signext 10, i32* %97)
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 10
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %110

102:                                              ; preds = %93
  %103 = load i64, i64* %19, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %19, align 8
  br label %105

105:                                              ; preds = %102
  %106 = load i64, i64* %20, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %20, align 8
  %108 = load i64, i64* %22, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %22, align 8
  br label %45

110:                                              ; preds = %101, %59, %45
  br label %111

111:                                              ; preds = %110, %41
  %112 = load i32*, i32** %11, align 8
  %113 = call i64 @fflush(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %139

116:                                              ; preds = %111
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @fileno(i32* %117)
  %119 = call i32 @fstat(i32 %118, %struct.stat* %17)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @S_ISREG(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32*, i32** %11, align 8
  %128 = call i32 @fileno(i32* %127)
  %129 = call i64 @fsync(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %139

132:                                              ; preds = %126, %121, %116
  %133 = load i32*, i32** %11, align 8
  %134 = call i64 @fclose(i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %139

137:                                              ; preds = %132
  store i32 0, i32* %24, align 4
  br i1 false, label %138, label %154

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138, %136, %131, %115, %92, %84
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @F_MULTILOCK, align 4
  %144 = call i32 @F_ISSET(i32 %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %139
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %148 = load i32, i32* @M_SYSERR, align 4
  %149 = load i8*, i8** %10, align 8
  %150 = call i32 @msgq_str(%struct.TYPE_12__* %147, i32 %148, i8* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %151

151:                                              ; preds = %146, %139
  %152 = load i32*, i32** %11, align 8
  %153 = call i64 @fclose(i32* %152)
  store i32 1, i32* %24, align 4
  br label %154

154:                                              ; preds = %151, %137
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %154
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32 (%struct.TYPE_12__*, i8*, i32)*, i32 (%struct.TYPE_12__*, i8*, i32)** %159, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %162 = load i32, i32* @BUSY_OFF, align 4
  %163 = call i32 %160(%struct.TYPE_12__* %161, i8* null, i32 %162)
  br label %164

164:                                              ; preds = %157, %154
  %165 = load i64*, i64** %14, align 8
  %166 = icmp ne i64* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i64, i64* %19, align 8
  %169 = load i64*, i64** %15, align 8
  store i64 %168, i64* %169, align 8
  %170 = load i64, i64* %22, align 8
  %171 = load i64*, i64** %14, align 8
  store i64 %170, i64* %171, align 8
  br label %172

172:                                              ; preds = %167, %164
  %173 = load i32, i32* %24, align 4
  ret i32 %173
}

declare dso_local i64 @INTERRUPTED(%struct.TYPE_12__*) #1

declare dso_local i64 @db_rget(%struct.TYPE_12__*, i64, i8**, i64*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local signext i8 @putc(i8 signext, i32*) #1

declare dso_local i64 @fflush(i32*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @F_ISSET(i32, i32) #1

declare dso_local i32 @msgq_str(%struct.TYPE_12__*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
