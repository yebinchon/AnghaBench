; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_close.c___rec_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_close.c___rec_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)*, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_25__*, i32)*, i32, %struct.TYPE_22__, i32, i32*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.iovec = type { i32, i32* }

@R_RECNOSYNC = common dso_local global i64 0, align 8
@R_RDONLY = common dso_local global i32 0, align 4
@R_INMEM = common dso_local global i32 0, align 4
@R_MODIFIED = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@R_EOF = common dso_local global i32 0, align 4
@MAX_REC_NUMBER = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@R_FIXLEN = common dso_local global i32 0, align 4
@R_FIRST = common dso_local global i32 0, align 4
@R_NEXT = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rec_sync(%struct.TYPE_24__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x %struct.iovec], align 16
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca %struct.TYPE_23__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %7, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @mpool_put(i32 %24, i32* %27, i32 0)
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %21, %2
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @R_RECNOSYNC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %37 = call i32 @__bt_sync(%struct.TYPE_24__* %36, i32 0)
  store i32 %37, i32* %3, align 4
  br label %202

38:                                               ; preds = %31
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %40 = load i32, i32* @R_RDONLY, align 4
  %41 = load i32, i32* @R_INMEM, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @F_ISSET(%struct.TYPE_25__* %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %47 = load i32, i32* @R_MODIFIED, align 4
  %48 = call i64 @F_ISSET(%struct.TYPE_25__* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45, %38
  %51 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %51, i32* %3, align 4
  br label %202

52:                                               ; preds = %45
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %54 = load i32, i32* @R_EOF, align 4
  %55 = call i64 @F_ISSET(%struct.TYPE_25__* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_25__*, i32)*, i32 (%struct.TYPE_25__*, i32)** %59, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %62 = load i32, i32* @MAX_REC_NUMBER, align 4
  %63 = call i32 %60(%struct.TYPE_25__* %61, i32 %62)
  %64 = load i32, i32* @RET_ERROR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @RET_ERROR, align 4
  store i32 %67, i32* %3, align 4
  br label %202

68:                                               ; preds = %57, %52
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SEEK_SET, align 4
  %73 = call i64 @lseek(i32 %71, i32 0, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @RET_ERROR, align 4
  store i32 %76, i32* %3, align 4
  br label %202

77:                                               ; preds = %68
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  store i32 4, i32* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 1
  store i32* %12, i32** %83, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %85 = load i32, i32* @R_FIXLEN, align 4
  %86 = call i64 @F_ISSET(%struct.TYPE_25__* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %122

88:                                               ; preds = %77
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)** %90, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %93 = load i32, i32* @R_FIRST, align 4
  %94 = call i32 %91(%struct.TYPE_24__* %92, %struct.TYPE_23__* %9, %struct.TYPE_23__* %8, i32 %93)
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %114, %88
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @RET_SUCCESS, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %95
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @_write(i32 %102, i32* %104, i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = load i32, i32* @RET_ERROR, align 4
  store i32 %113, i32* %3, align 4
  br label %202

114:                                              ; preds = %99
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)** %116, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %119 = load i32, i32* @R_NEXT, align 4
  %120 = call i32 %117(%struct.TYPE_24__* %118, %struct.TYPE_23__* %9, %struct.TYPE_23__* %8, i32 %119)
  store i32 %120, i32* %13, align 4
  br label %95

121:                                              ; preds = %95
  br label %168

122:                                              ; preds = %77
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 3
  %125 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 1
  %126 = getelementptr inbounds %struct.iovec, %struct.iovec* %125, i32 0, i32 1
  store i32* %124, i32** %126, align 8
  %127 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 1
  %128 = getelementptr inbounds %struct.iovec, %struct.iovec* %127, i32 0, i32 0
  store i32 1, i32* %128, align 16
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)** %130, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %133 = load i32, i32* @R_FIRST, align 4
  %134 = call i32 %131(%struct.TYPE_24__* %132, %struct.TYPE_23__* %9, %struct.TYPE_23__* %8, i32 %133)
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %160, %122
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @RET_SUCCESS, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %167

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %143 = getelementptr inbounds %struct.iovec, %struct.iovec* %142, i32 0, i32 1
  store i32* %141, i32** %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %147 = getelementptr inbounds %struct.iovec, %struct.iovec* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 16
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %6, i64 0, i64 0
  %152 = call i64 @_writev(i32 %150, %struct.iovec* %151, i32 2)
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = icmp ne i64 %152, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %139
  %159 = load i32, i32* @RET_ERROR, align 4
  store i32 %159, i32* %3, align 4
  br label %202

160:                                              ; preds = %139
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32)** %162, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %165 = load i32, i32* @R_NEXT, align 4
  %166 = call i32 %163(%struct.TYPE_24__* %164, %struct.TYPE_23__* %9, %struct.TYPE_23__* %8, i32 %165)
  store i32 %166, i32* %13, align 4
  br label %135

167:                                              ; preds = %135
  br label %168

168:                                              ; preds = %167, %121
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @RET_ERROR, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i32, i32* @RET_ERROR, align 4
  store i32 %177, i32* %3, align 4
  br label %202

178:                                              ; preds = %168
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @SEEK_CUR, align 4
  %183 = call i64 @lseek(i32 %181, i32 0, i32 %182)
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %10, align 4
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* @RET_ERROR, align 4
  store i32 %187, i32* %3, align 4
  br label %202

188:                                              ; preds = %178
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i64 @ftruncate(i32 %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %188
  %196 = load i32, i32* @RET_ERROR, align 4
  store i32 %196, i32* %3, align 4
  br label %202

197:                                              ; preds = %188
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %199 = load i32, i32* @R_MODIFIED, align 4
  %200 = call i32 @F_CLR(%struct.TYPE_25__* %198, i32 %199)
  %201 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %197, %195, %186, %176, %158, %112, %75, %66, %50, %35
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @mpool_put(i32, i32*, i32) #1

declare dso_local i32 @__bt_sync(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i64 @_write(i32, i32*, i32) #1

declare dso_local i64 @_writev(i32, %struct.iovec*, i32) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
