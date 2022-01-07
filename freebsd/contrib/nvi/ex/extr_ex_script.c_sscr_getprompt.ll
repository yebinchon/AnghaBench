; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_script.c_sscr_getprompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_script.c_sscr_getprompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.timeval = type { i32, i32 }

@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Error: timed out\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Error: shell: EOF\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"323|Invalid input. Truncated.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @sscr_getprompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sscr_getprompt(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = call %struct.TYPE_15__* @EXP(%struct.TYPE_14__* %18)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %4, align 8
  %20 = call i32 @FD_ZERO(i32* %11)
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  store i8* %21, i8** %6, align 8
  store i64 1024, i64* %14, align 8
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 5, i32* %22, align 4
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %10, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @FD_SET(i64 %29, i32* %11)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i32 @select(i64 %34, i32* %11, i32* null, i32* null, %struct.timeval* %5)
  switch i32 %35, label %45 [
    i32 -1, label %36
    i32 0, label %40
    i32 1, label %44
  ]

36:                                               ; preds = %1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = load i32, i32* @M_SYSERR, align 4
  %39 = call i32 @msgq(%struct.TYPE_14__* %37, i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %199

40:                                               ; preds = %1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = load i32, i32* @M_ERR, align 4
  %43 = call i32 @msgq(%struct.TYPE_14__* %41, i32 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %199

44:                                               ; preds = %1
  br label %45

45:                                               ; preds = %1, %44
  br label %46

46:                                               ; preds = %162, %148, %45
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sub i64 1024, %51
  store i64 %52, i64* %14, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @read(i64 %55, i8* %56, i64 %57)
  store i32 %58, i32* %15, align 4
  switch i32 %58, label %67 [
    i32 0, label %59
    i32 -1, label %63
  ]

59:                                               ; preds = %46
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = load i32, i32* @M_ERR, align 4
  %62 = call i32 @msgq(%struct.TYPE_14__* %60, i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %199

63:                                               ; preds = %46
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = load i32, i32* @M_SYSERR, align 4
  %66 = call i32 @msgq(%struct.TYPE_14__* %64, i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %199

67:                                               ; preds = %46
  %68 = load i32, i32* %15, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %6, align 8
  br label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  store i8* %73, i8** %8, align 8
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %120, %72
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ult i8* %75, %76
  br i1 %77, label %78, label %123

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 13
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %88, label %119

88:                                               ; preds = %83, %78
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = load i32*, i32** %16, align 8
  %100 = load i64, i64* %17, align 8
  %101 = call i64 @CHAR2INT5(%struct.TYPE_14__* %89, i32 %92, i8* %93, i64 %98, i32* %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  br label %194

104:                                              ; preds = %88
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = call i64 @db_last(%struct.TYPE_14__* %105, i32* %12)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32*, i32** %16, align 8
  %112 = load i64, i64* %17, align 8
  %113 = call i64 @db_append(%struct.TYPE_14__* %109, i32 0, i32 %110, i32* %111, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108, %104
  br label %199

116:                                              ; preds = %108
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  store i8* %118, i8** %8, align 8
  br label %119

119:                                              ; preds = %116, %83
  br label %120

120:                                              ; preds = %119
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %7, align 8
  br label %74

123:                                              ; preds = %74
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %126 = icmp ugt i8* %124, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %123
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %129 = load i8*, i8** %8, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  %136 = call i32 @memmove(i8* %128, i8* %129, i32 %135)
  %137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %138 = load i8*, i8** %6, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = getelementptr inbounds i8, i8* %137, i64 %142
  store i8* %143, i8** %6, align 8
  br label %144

144:                                              ; preds = %127, %123
  %145 = load i8*, i8** %6, align 8
  %146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %147 = icmp eq i8* %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %46

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 0, i32* %150, align 4
  %151 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i32 100000, i32* %151, align 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  %156 = call i32 @select(i64 %155, i32* %11, i32* null, i32* null, %struct.timeval* %5)
  switch i32 %156, label %163 [
    i32 -1, label %157
    i32 0, label %161
    i32 1, label %162
  ]

157:                                              ; preds = %149
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %159 = load i32, i32* @M_SYSERR, align 4
  %160 = call i32 @msgq(%struct.TYPE_14__* %158, i32 %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %199

161:                                              ; preds = %149
  br label %163

162:                                              ; preds = %149
  br label %46

163:                                              ; preds = %149, %161
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  store i64 %168, i64* %13, align 8
  %169 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  store i8* %169, i8** %6, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %175 = load i64, i64* %13, align 8
  %176 = load i32*, i32** %16, align 8
  %177 = load i64, i64* %17, align 8
  %178 = call i64 @CHAR2INT5(%struct.TYPE_14__* %170, i32 %173, i8* %174, i64 %175, i32* %176, i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %163
  br label %194

181:                                              ; preds = %163
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %183 = call i64 @db_last(%struct.TYPE_14__* %182, i32* %12)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %181
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %187 = load i32, i32* %12, align 4
  %188 = load i32*, i32** %16, align 8
  %189 = load i64, i64* %17, align 8
  %190 = call i64 @db_append(%struct.TYPE_14__* %186, i32 0, i32 %187, i32* %188, i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %185, %181
  br i1 false, label %193, label %198

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193, %180, %103
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %196 = load i32, i32* @M_ERR, align 4
  %197 = call i32 @msgq(%struct.TYPE_14__* %195, i32 %196, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %198

198:                                              ; preds = %194, %192
  br label %199

199:                                              ; preds = %198, %157, %115, %63, %59, %40, %36
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %201 = call i32 @sscr_end(%struct.TYPE_14__* %200)
  store i32 1, i32* %2, align 4
  br label %207

202:                                              ; preds = %185
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %204 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %205 = load i64, i64* %13, align 8
  %206 = call i32 @sscr_setprompt(%struct.TYPE_14__* %203, i8* %204, i64 %205)
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %202, %199
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local %struct.TYPE_15__* @EXP(%struct.TYPE_14__*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @msgq(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @read(i64, i8*, i64) #1

declare dso_local i64 @CHAR2INT5(%struct.TYPE_14__*, i32, i8*, i64, i32*, i64) #1

declare dso_local i64 @db_last(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @db_append(%struct.TYPE_14__*, i32, i32, i32*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @sscr_end(%struct.TYPE_14__*) #1

declare dso_local i32 @sscr_setprompt(%struct.TYPE_14__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
