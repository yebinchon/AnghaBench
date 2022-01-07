; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_ftell.c__ftello.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_ftell.c__ftello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, %struct.TYPE_6__, i32*, i32* }
%struct.TYPE_6__ = type { i32* }

@ESPIPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@__SRD = common dso_local global i32 0, align 4
@__SWR = common dso_local global i32 0, align 4
@__SAPP = common dso_local global i32 0, align 4
@__S2OAP = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@__SOFF = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@__SERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ftello(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 7
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ESPIPE, align 4
  store i32 %13, i32* @errno, align 4
  store i32 1, i32* %3, align 4
  br label %178

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @__SRD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %68, label %21

21:                                               ; preds = %14
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @__SWR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %68

33:                                               ; preds = %28
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 6
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = ptrtoint i32* %36 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %33
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @__SAPP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @__S2OAP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53, %46
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = load i32, i32* @SEEK_END, align 4
  %63 = call i32 @_sseek(%struct.TYPE_7__* %61, i32 0, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %178

67:                                               ; preds = %60
  br label %88

68:                                               ; preds = %53, %33, %28, %21, %14
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @__SOFF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %6, align 4
  br label %87

79:                                               ; preds = %68
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = load i32, i32* @SEEK_CUR, align 4
  %82 = call i32 @_sseek(%struct.TYPE_7__* %80, i32 0, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %178

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %67
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @__SRD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %134

95:                                               ; preds = %88
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = call i64 @HASUB(%struct.TYPE_7__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  br label %107

103:                                              ; preds = %95
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i64 [ %102, %99 ], [ %106, %103 ]
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load i32, i32* @__SERR, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* @EIO, align 4
  store i32 %120, i32* @errno, align 4
  store i32 1, i32* %3, align 4
  br label %178

121:                                              ; preds = %107
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = call i64 @HASUB(%struct.TYPE_7__* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = sub nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %125, %121
  br label %175

134:                                              ; preds = %88
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @__SWR, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %174

141:                                              ; preds = %134
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 6
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %174

146:                                              ; preds = %141
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = ptrtoint i32* %149 to i64
  %155 = ptrtoint i32* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 4
  store i64 %157, i64* %7, align 8
  %158 = icmp ugt i64 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %146
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* @OFF_MAX, align 8
  %163 = load i64, i64* %7, align 8
  %164 = sub i64 %162, %163
  %165 = icmp ugt i64 %161, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* @EOVERFLOW, align 4
  store i32 %167, i32* @errno, align 4
  store i32 1, i32* %3, align 4
  br label %178

168:                                              ; preds = %159
  %169 = load i64, i64* %7, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = add i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %168, %146, %141, %134
  br label %175

175:                                              ; preds = %174, %133
  %176 = load i32, i32* %6, align 4
  %177 = load i32*, i32** %5, align 8
  store i32 %176, i32* %177, align 4
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %175, %166, %114, %85, %66, %12
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @_sseek(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @HASUB(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
