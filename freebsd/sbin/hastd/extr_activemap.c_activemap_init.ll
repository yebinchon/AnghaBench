; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_activemap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_activemap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.activemap = type { i32, i32, i32, i32, i64, %struct.activemap*, %struct.activemap*, %struct.activemap*, %struct.activemap*, i64, i32, i64, i32, i32, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ACTIVEMAP_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @activemap_init(%struct.activemap** %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.activemap**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.activemap*, align 8
  store %struct.activemap** %0, %struct.activemap*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.activemap**, %struct.activemap*** %7, align 8
  %14 = icmp ne %struct.activemap** %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @PJDLOG_ASSERT(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @PJDLOG_ASSERT(i32 %19)
  %21 = load i64, i64* %9, align 8
  %22 = icmp sgt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @PJDLOG_ASSERT(i32 %23)
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @powerof2(i64 %25)
  %27 = call i32 @PJDLOG_ASSERT(i32 %26)
  %28 = load i64, i64* %10, align 8
  %29 = icmp sgt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @PJDLOG_ASSERT(i32 %30)
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @powerof2(i64 %32)
  %34 = call i32 @PJDLOG_ASSERT(i32 %33)
  %35 = load i64, i64* %11, align 8
  %36 = icmp sgt i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @PJDLOG_ASSERT(i32 %37)
  %39 = call %struct.activemap* @malloc(i32 104)
  store %struct.activemap* %39, %struct.activemap** %12, align 8
  %40 = load %struct.activemap*, %struct.activemap** %12, align 8
  %41 = icmp eq %struct.activemap* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %188

43:                                               ; preds = %5
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.activemap*, %struct.activemap** %12, align 8
  %46 = getelementptr inbounds %struct.activemap, %struct.activemap* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.activemap*, %struct.activemap** %12, align 8
  %49 = getelementptr inbounds %struct.activemap, %struct.activemap* %48, i32 0, i32 15
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.activemap*, %struct.activemap** %12, align 8
  %52 = getelementptr inbounds %struct.activemap, %struct.activemap* %51, i32 0, i32 14
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = sub nsw i64 %53, 1
  %55 = call i32 @bitcount32(i64 %54)
  %56 = load %struct.activemap*, %struct.activemap** %12, align 8
  %57 = getelementptr inbounds %struct.activemap, %struct.activemap* %56, i32 0, i32 13
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %9, align 8
  %62 = sdiv i64 %60, %61
  %63 = add nsw i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = load %struct.activemap*, %struct.activemap** %12, align 8
  %66 = getelementptr inbounds %struct.activemap, %struct.activemap* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.activemap*, %struct.activemap** %12, align 8
  %68 = getelementptr inbounds %struct.activemap, %struct.activemap* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bitstr_size(i32 %69)
  %71 = load %struct.activemap*, %struct.activemap** %12, align 8
  %72 = getelementptr inbounds %struct.activemap, %struct.activemap* %71, i32 0, i32 12
  store i32 %70, i32* %72, align 8
  %73 = load %struct.activemap*, %struct.activemap** %12, align 8
  %74 = getelementptr inbounds %struct.activemap, %struct.activemap* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @roundup2(i32 %75, i64 %76)
  %78 = load %struct.activemap*, %struct.activemap** %12, align 8
  %79 = getelementptr inbounds %struct.activemap, %struct.activemap* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.activemap*, %struct.activemap** %12, align 8
  %81 = getelementptr inbounds %struct.activemap, %struct.activemap* %80, i32 0, i32 11
  store i64 0, i64* %81, align 8
  %82 = load %struct.activemap*, %struct.activemap** %12, align 8
  %83 = getelementptr inbounds %struct.activemap, %struct.activemap* %82, i32 0, i32 3
  store i32 -2, i32* %83, align 4
  %84 = load %struct.activemap*, %struct.activemap** %12, align 8
  %85 = getelementptr inbounds %struct.activemap, %struct.activemap* %84, i32 0, i32 10
  %86 = call i32 @TAILQ_INIT(i32* %85)
  %87 = load %struct.activemap*, %struct.activemap** %12, align 8
  %88 = getelementptr inbounds %struct.activemap, %struct.activemap* %87, i32 0, i32 9
  store i64 0, i64* %88, align 8
  %89 = load %struct.activemap*, %struct.activemap** %12, align 8
  %90 = getelementptr inbounds %struct.activemap, %struct.activemap* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @calloc(i32 %91, i32 104)
  %93 = bitcast i8* %92 to %struct.activemap*
  %94 = load %struct.activemap*, %struct.activemap** %12, align 8
  %95 = getelementptr inbounds %struct.activemap, %struct.activemap* %94, i32 0, i32 8
  store %struct.activemap* %93, %struct.activemap** %95, align 8
  %96 = load %struct.activemap*, %struct.activemap** %12, align 8
  %97 = getelementptr inbounds %struct.activemap, %struct.activemap* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @calloc(i32 1, i32 %98)
  %100 = bitcast i8* %99 to %struct.activemap*
  %101 = load %struct.activemap*, %struct.activemap** %12, align 8
  %102 = getelementptr inbounds %struct.activemap, %struct.activemap* %101, i32 0, i32 7
  store %struct.activemap* %100, %struct.activemap** %102, align 8
  %103 = load %struct.activemap*, %struct.activemap** %12, align 8
  %104 = getelementptr inbounds %struct.activemap, %struct.activemap* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @bit_alloc(i32 %105)
  %107 = bitcast i8* %106 to %struct.activemap*
  %108 = load %struct.activemap*, %struct.activemap** %12, align 8
  %109 = getelementptr inbounds %struct.activemap, %struct.activemap* %108, i32 0, i32 6
  store %struct.activemap* %107, %struct.activemap** %109, align 8
  %110 = load %struct.activemap*, %struct.activemap** %12, align 8
  %111 = getelementptr inbounds %struct.activemap, %struct.activemap* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @bit_alloc(i32 %112)
  %114 = bitcast i8* %113 to %struct.activemap*
  %115 = load %struct.activemap*, %struct.activemap** %12, align 8
  %116 = getelementptr inbounds %struct.activemap, %struct.activemap* %115, i32 0, i32 5
  store %struct.activemap* %114, %struct.activemap** %116, align 8
  %117 = load %struct.activemap*, %struct.activemap** %12, align 8
  %118 = getelementptr inbounds %struct.activemap, %struct.activemap* %117, i32 0, i32 8
  %119 = load %struct.activemap*, %struct.activemap** %118, align 8
  %120 = icmp eq %struct.activemap* %119, null
  br i1 %120, label %136, label %121

121:                                              ; preds = %43
  %122 = load %struct.activemap*, %struct.activemap** %12, align 8
  %123 = getelementptr inbounds %struct.activemap, %struct.activemap* %122, i32 0, i32 7
  %124 = load %struct.activemap*, %struct.activemap** %123, align 8
  %125 = icmp eq %struct.activemap* %124, null
  br i1 %125, label %136, label %126

126:                                              ; preds = %121
  %127 = load %struct.activemap*, %struct.activemap** %12, align 8
  %128 = getelementptr inbounds %struct.activemap, %struct.activemap* %127, i32 0, i32 6
  %129 = load %struct.activemap*, %struct.activemap** %128, align 8
  %130 = icmp eq %struct.activemap* %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load %struct.activemap*, %struct.activemap** %12, align 8
  %133 = getelementptr inbounds %struct.activemap, %struct.activemap* %132, i32 0, i32 5
  %134 = load %struct.activemap*, %struct.activemap** %133, align 8
  %135 = icmp eq %struct.activemap* %134, null
  br i1 %135, label %136, label %182

136:                                              ; preds = %131, %126, %121, %43
  %137 = load %struct.activemap*, %struct.activemap** %12, align 8
  %138 = getelementptr inbounds %struct.activemap, %struct.activemap* %137, i32 0, i32 8
  %139 = load %struct.activemap*, %struct.activemap** %138, align 8
  %140 = icmp ne %struct.activemap* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.activemap*, %struct.activemap** %12, align 8
  %143 = getelementptr inbounds %struct.activemap, %struct.activemap* %142, i32 0, i32 8
  %144 = load %struct.activemap*, %struct.activemap** %143, align 8
  %145 = call i32 @free(%struct.activemap* %144)
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.activemap*, %struct.activemap** %12, align 8
  %148 = getelementptr inbounds %struct.activemap, %struct.activemap* %147, i32 0, i32 7
  %149 = load %struct.activemap*, %struct.activemap** %148, align 8
  %150 = icmp ne %struct.activemap* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.activemap*, %struct.activemap** %12, align 8
  %153 = getelementptr inbounds %struct.activemap, %struct.activemap* %152, i32 0, i32 7
  %154 = load %struct.activemap*, %struct.activemap** %153, align 8
  %155 = call i32 @free(%struct.activemap* %154)
  br label %156

156:                                              ; preds = %151, %146
  %157 = load %struct.activemap*, %struct.activemap** %12, align 8
  %158 = getelementptr inbounds %struct.activemap, %struct.activemap* %157, i32 0, i32 6
  %159 = load %struct.activemap*, %struct.activemap** %158, align 8
  %160 = icmp ne %struct.activemap* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.activemap*, %struct.activemap** %12, align 8
  %163 = getelementptr inbounds %struct.activemap, %struct.activemap* %162, i32 0, i32 6
  %164 = load %struct.activemap*, %struct.activemap** %163, align 8
  %165 = call i32 @free(%struct.activemap* %164)
  br label %166

166:                                              ; preds = %161, %156
  %167 = load %struct.activemap*, %struct.activemap** %12, align 8
  %168 = getelementptr inbounds %struct.activemap, %struct.activemap* %167, i32 0, i32 5
  %169 = load %struct.activemap*, %struct.activemap** %168, align 8
  %170 = icmp ne %struct.activemap* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load %struct.activemap*, %struct.activemap** %12, align 8
  %173 = getelementptr inbounds %struct.activemap, %struct.activemap* %172, i32 0, i32 5
  %174 = load %struct.activemap*, %struct.activemap** %173, align 8
  %175 = call i32 @free(%struct.activemap* %174)
  br label %176

176:                                              ; preds = %171, %166
  %177 = load %struct.activemap*, %struct.activemap** %12, align 8
  %178 = getelementptr inbounds %struct.activemap, %struct.activemap* %177, i32 0, i32 4
  store i64 0, i64* %178, align 8
  %179 = load %struct.activemap*, %struct.activemap** %12, align 8
  %180 = call i32 @free(%struct.activemap* %179)
  %181 = load i32, i32* @ENOMEM, align 4
  store i32 %181, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %188

182:                                              ; preds = %131
  %183 = load i64, i64* @ACTIVEMAP_MAGIC, align 8
  %184 = load %struct.activemap*, %struct.activemap** %12, align 8
  %185 = getelementptr inbounds %struct.activemap, %struct.activemap* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  %186 = load %struct.activemap*, %struct.activemap** %12, align 8
  %187 = load %struct.activemap**, %struct.activemap*** %7, align 8
  store %struct.activemap* %186, %struct.activemap** %187, align 8
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %182, %176, %42
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @powerof2(i64) #1

declare dso_local %struct.activemap* @malloc(i32) #1

declare dso_local i32 @bitcount32(i64) #1

declare dso_local i32 @bitstr_size(i32) #1

declare dso_local i32 @roundup2(i32, i64) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @bit_alloc(i32) #1

declare dso_local i32 @free(%struct.activemap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
