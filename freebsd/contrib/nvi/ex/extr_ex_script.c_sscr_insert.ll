; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_script.c_sscr_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_script.c_sscr_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.timeval = type { i32, i64 }

@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"323|Invalid input. Truncated.\00", align 1
@MINREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @sscr_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sscr_insert(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = call %struct.TYPE_19__* @EXP(%struct.TYPE_18__* %20)
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %4, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = call i64 @db_last(%struct.TYPE_18__* %22, i64* %11)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %202

26:                                               ; preds = %1
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = load i8*, i8** %17, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @GET_SPACE_RETC(%struct.TYPE_18__* %27, i8* %28, i64 %29, i32 1024)
  %31 = load i8*, i8** %17, align 8
  store i8* %31, i8** %6, align 8
  store i32 1, i32* %16, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %9, align 8
  br label %35

35:                                               ; preds = %135, %26
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @read(i64 %38, i8* %39, i32 1024)
  store i32 %40, i32* %15, align 4
  switch i32 %40, label %48 [
    i32 0, label %41
    i32 -1, label %44
  ]

41:                                               ; preds = %35
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = call i32 @sscr_end(%struct.TYPE_18__* %42)
  store i32 0, i32* %16, align 4
  br label %196

44:                                               ; preds = %35
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = load i32, i32* @M_SYSERR, align 4
  %47 = call i32 @msgq(%struct.TYPE_18__* %45, i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %196

48:                                               ; preds = %35
  %49 = load i32, i32* %15, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %6, align 8
  br label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %17, align 8
  store i8* %54, i8** %8, align 8
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %100, %53
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %59, label %103

59:                                               ; preds = %55
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 13
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %69, label %99

69:                                               ; preds = %64, %59
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  store i64 %74, i64* %13, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load i32*, i32** %18, align 8
  %82 = load i64, i64* %19, align 8
  %83 = call i64 @CHAR2INT5(%struct.TYPE_18__* %75, i32 %78, i8* %79, i64 %80, i32* %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %191

86:                                               ; preds = %69
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %88 = load i64, i64* %11, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %11, align 8
  %90 = trunc i64 %88 to i32
  %91 = load i32*, i32** %18, align 8
  %92 = load i64, i64* %19, align 8
  %93 = call i64 @db_append(%struct.TYPE_18__* %87, i32 1, i32 %90, i32* %91, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %196

96:                                               ; preds = %86
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  store i8* %98, i8** %8, align 8
  br label %99

99:                                               ; preds = %96, %64
  br label %100

100:                                              ; preds = %99
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %7, align 8
  br label %55

103:                                              ; preds = %55
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ugt i8* %104, %105
  br i1 %106, label %107, label %174

107:                                              ; preds = %103
  %108 = load i8*, i8** %7, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  store i64 %112, i64* %13, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @sscr_matchprompt(%struct.TYPE_18__* %113, i8* %114, i64 %115, i64* %14)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  %119 = load i64, i64* %14, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %118, %107
  %122 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 100000, i32* %123, align 8
  %124 = call i32 @FD_ZERO(i32* %10)
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @FD_SET(i64 %127, i32* %10)
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  %133 = call i32 @select(i64 %132, i32* %10, i32* null, i32* null, %struct.timeval* %5)
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %143

135:                                              ; preds = %121
  %136 = load i8*, i8** %17, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = load i64, i64* %13, align 8
  %139 = call i32 @memmove(i8* %136, i8* %137, i64 %138)
  %140 = load i8*, i8** %17, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %6, align 8
  br label %35

143:                                              ; preds = %121
  br label %144

144:                                              ; preds = %143, %118
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i64, i64* %13, align 8
  %148 = call i64 @sscr_setprompt(%struct.TYPE_18__* %145, i8* %146, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 1, i32* %2, align 4
  br label %202

151:                                              ; preds = %144
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i8*, i8** %8, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load i32*, i32** %18, align 8
  %159 = load i64, i64* %19, align 8
  %160 = call i64 @CHAR2INT5(%struct.TYPE_18__* %152, i32 %155, i8* %156, i64 %157, i32* %158, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  br label %191

163:                                              ; preds = %151
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %165 = load i64, i64* %11, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %11, align 8
  %167 = trunc i64 %165 to i32
  %168 = load i32*, i32** %18, align 8
  %169 = load i64, i64* %19, align 8
  %170 = call i64 @db_append(%struct.TYPE_18__* %164, i32 1, i32 %167, i32* %168, i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %196

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173, %103
  %175 = load i64, i64* %11, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  %178 = load i64, i64* %19, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load i64, i64* %19, align 8
  %182 = sub i64 %181, 1
  br label %184

183:                                              ; preds = %174
  br label %184

184:                                              ; preds = %183, %180
  %185 = phi i64 [ %182, %180 ], [ 0, %183 ]
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %189 = call i32 @vs_refresh(%struct.TYPE_18__* %188, i32 1)
  store i32 %189, i32* %16, align 4
  br i1 false, label %190, label %195

190:                                              ; preds = %184
  br label %191

191:                                              ; preds = %190, %162, %85
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %193 = load i32, i32* @M_ERR, align 4
  %194 = call i32 @msgq(%struct.TYPE_18__* %192, i32 %193, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %195

195:                                              ; preds = %191, %184
  br label %196

196:                                              ; preds = %195, %172, %95, %44, %41
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %198 = load i8*, i8** %17, align 8
  %199 = load i64, i64* %12, align 8
  %200 = call i32 @FREE_SPACE(%struct.TYPE_18__* %197, i8* %198, i64 %199)
  %201 = load i32, i32* %16, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %196, %150, %25
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local %struct.TYPE_19__* @EXP(%struct.TYPE_18__*) #1

declare dso_local i64 @db_last(%struct.TYPE_18__*, i64*) #1

declare dso_local i32 @GET_SPACE_RETC(%struct.TYPE_18__*, i8*, i64, i32) #1

declare dso_local i32 @read(i64, i8*, i32) #1

declare dso_local i32 @sscr_end(%struct.TYPE_18__*) #1

declare dso_local i32 @msgq(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i64 @CHAR2INT5(%struct.TYPE_18__*, i32, i8*, i64, i32*, i64) #1

declare dso_local i64 @db_append(%struct.TYPE_18__*, i32, i32, i32*, i64) #1

declare dso_local i32 @sscr_matchprompt(%struct.TYPE_18__*, i8*, i64, i64*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @sscr_setprompt(%struct.TYPE_18__*, i8*, i64) #1

declare dso_local i32 @vs_refresh(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @FREE_SPACE(%struct.TYPE_18__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
