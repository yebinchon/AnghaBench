; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/quotacheck/extr_quotacheck.c_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/quotacheck/extr_quotacheck.c_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dqblk = type { i64, i64, i64, i64, i64, i64 }
%struct.fileusage = type { i64, i64, i64, %struct.fileusage* }
%struct.quotafile = type { i32 }
%struct.stat = type { i64 }

@update.zerodqbuf = internal global %struct.dqblk zeroinitializer, align 8
@update.zerofileusage = internal global %struct.fileusage zeroinitializer, align 8
@FUHASH = common dso_local global i64 0, align 8
@fuhead = common dso_local global %struct.fileusage*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update(i8* %0, %struct.quotafile* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.quotafile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fileusage*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dqblk, align 8
  %12 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  store %struct.quotafile* %1, %struct.quotafile** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %10, align 8
  %13 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %14 = call i64 @quota_maxid(%struct.quotafile* %13)
  store i64 %14, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %100, %3
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %19, label %103

19:                                               ; preds = %15
  %20 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @quota_read(%struct.quotafile* %20, %struct.dqblk* %11, i64 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = bitcast %struct.dqblk* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.dqblk* @update.zerodqbuf to i8*), i64 48, i1 false)
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.fileusage* @lookup(i64 %27, i32 %28)
  store %struct.fileusage* %29, %struct.fileusage** %7, align 8
  %30 = icmp eq %struct.fileusage* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store %struct.fileusage* @update.zerofileusage, %struct.fileusage** %7, align 8
  br label %32

32:                                               ; preds = %31, %26
  %33 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %34 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %32
  %38 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %39 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %11, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %11, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %11, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %11, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %50, %46, %42, %37, %32
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %11, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %64 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %11, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %71 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %76 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %78 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  br label %100

79:                                               ; preds = %67, %60
  %80 = load i8*, i8** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @printchanges(i8* %80, i32 %81, %struct.dqblk* %11, %struct.fileusage* %82, i64 %83)
  %85 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %86 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %11, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %90 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %11, i32 0, i32 1
  store i64 %91, i64* %92, align 8
  %93 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @quota_write_usage(%struct.quotafile* %93, %struct.dqblk* %11, i64 %94)
  %96 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %97 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %99 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %79, %74
  %101 = load i64, i64* %8, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %8, align 8
  br label %15

103:                                              ; preds = %15
  store i64 0, i64* %8, align 8
  br label %104

104:                                              ; preds = %179, %103
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @FUHASH, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %182

108:                                              ; preds = %104
  %109 = load %struct.fileusage***, %struct.fileusage**** @fuhead, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.fileusage**, %struct.fileusage*** %109, i64 %111
  %113 = load %struct.fileusage**, %struct.fileusage*** %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = getelementptr inbounds %struct.fileusage*, %struct.fileusage** %113, i64 %114
  %116 = load %struct.fileusage*, %struct.fileusage** %115, align 8
  store %struct.fileusage* %116, %struct.fileusage** %7, align 8
  br label %117

117:                                              ; preds = %174, %108
  %118 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %119 = icmp ne %struct.fileusage* %118, null
  br i1 %119, label %120, label %178

120:                                              ; preds = %117
  %121 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %122 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %9, align 8
  %125 = icmp ule i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %174

127:                                              ; preds = %120
  %128 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %129 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %134 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %174

138:                                              ; preds = %132, %127
  %139 = call i32 @bzero(%struct.dqblk* %11, i32 48)
  %140 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %141 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %10, align 8
  %144 = icmp ugt i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %147 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %10, align 8
  br label %149

149:                                              ; preds = %145, %138
  %150 = load i8*, i8** %4, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %153 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %154 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @printchanges(i8* %150, i32 %151, %struct.dqblk* %11, %struct.fileusage* %152, i64 %155)
  %157 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %158 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %11, i32 0, i32 0
  store i64 %159, i64* %160, align 8
  %161 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %162 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %11, i32 0, i32 1
  store i64 %163, i64* %164, align 8
  %165 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %166 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %167 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @quota_write_usage(%struct.quotafile* %165, %struct.dqblk* %11, i64 %168)
  %170 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %171 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %170, i32 0, i32 0
  store i64 0, i64* %171, align 8
  %172 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %173 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %172, i32 0, i32 1
  store i64 0, i64* %173, align 8
  br label %174

174:                                              ; preds = %149, %137, %126
  %175 = load %struct.fileusage*, %struct.fileusage** %7, align 8
  %176 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %175, i32 0, i32 3
  %177 = load %struct.fileusage*, %struct.fileusage** %176, align 8
  store %struct.fileusage* %177, %struct.fileusage** %7, align 8
  br label %117

178:                                              ; preds = %117
  br label %179

179:                                              ; preds = %178
  %180 = load i64, i64* %8, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %8, align 8
  br label %104

182:                                              ; preds = %104
  %183 = load i64, i64* %10, align 8
  %184 = load i64, i64* %9, align 8
  %185 = icmp ult i64 %183, %184
  br i1 %185, label %186, label %205

186:                                              ; preds = %182
  %187 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %188 = call i32 @quota_qfname(%struct.quotafile* %187)
  %189 = call i64 @stat(i32 %188, %struct.stat* %12)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %10, align 8
  %195 = add i64 %194, 2
  %196 = mul i64 %195, 48
  %197 = icmp sgt i64 %193, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %191
  %199 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %200 = call i32 @quota_qfname(%struct.quotafile* %199)
  %201 = load i64, i64* %10, align 8
  %202 = add nsw i64 %201, 2
  %203 = mul i64 %202, 48
  %204 = call i32 @truncate(i32 %200, i64 %203)
  br label %205

205:                                              ; preds = %198, %191, %186, %182
  ret i32 0
}

declare dso_local i64 @quota_maxid(%struct.quotafile*) #1

declare dso_local i64 @quota_read(%struct.quotafile*, %struct.dqblk*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.fileusage* @lookup(i64, i32) #1

declare dso_local i32 @printchanges(i8*, i32, %struct.dqblk*, %struct.fileusage*, i64) #1

declare dso_local i32 @quota_write_usage(%struct.quotafile*, %struct.dqblk*, i64) #1

declare dso_local i32 @bzero(%struct.dqblk*, i32) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @quota_qfname(%struct.quotafile*) #1

declare dso_local i32 @truncate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
