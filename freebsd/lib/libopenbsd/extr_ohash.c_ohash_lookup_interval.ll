; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_lookup_interval.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_lookup_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohash = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@NONE = common dso_local global i32 0, align 4
@DELETED = common dso_local global i8* null, align 8
@STAT_HASH_LENGTH = common dso_local global i32 0, align 4
@STAT_HASH_LOOKUP = common dso_local global i32 0, align 4
@STAT_HASH_POSITIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ohash_lookup_interval(%struct.ohash* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ohash*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ohash* %0, %struct.ohash** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @NONE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.ohash*, %struct.ohash** %6, align 8
  %16 = getelementptr inbounds %struct.ohash, %struct.ohash* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = srem i32 %14, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.ohash*, %struct.ohash** %6, align 8
  %21 = getelementptr inbounds %struct.ohash, %struct.ohash* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 2
  %24 = srem i32 %19, %23
  %25 = and i32 %24, -2
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %169, %4
  %28 = load %struct.ohash*, %struct.ohash** %6, align 8
  %29 = getelementptr inbounds %struct.ohash, %struct.ohash* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %170

37:                                               ; preds = %27
  %38 = load %struct.ohash*, %struct.ohash** %6, align 8
  %39 = getelementptr inbounds %struct.ohash, %struct.ohash* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** @DELETED, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @NONE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %52, %48
  br label %154

55:                                               ; preds = %37
  %56 = load %struct.ohash*, %struct.ohash** %6, align 8
  %57 = getelementptr inbounds %struct.ohash, %struct.ohash* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %153

66:                                               ; preds = %55
  %67 = load %struct.ohash*, %struct.ohash** %6, align 8
  %68 = getelementptr inbounds %struct.ohash, %struct.ohash* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.ohash*, %struct.ohash** %6, align 8
  %76 = getelementptr inbounds %struct.ohash, %struct.ohash* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %74, i64 %79
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = call i64 @strncmp(i8* %80, i8* %81, i32 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %153

90:                                               ; preds = %66
  %91 = load %struct.ohash*, %struct.ohash** %6, align 8
  %92 = getelementptr inbounds %struct.ohash, %struct.ohash* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.ohash*, %struct.ohash** %6, align 8
  %100 = getelementptr inbounds %struct.ohash, %struct.ohash* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %98, i64 %103
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = getelementptr inbounds i8, i8* %104, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %153

114:                                              ; preds = %90
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @NONE, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %114
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.ohash*, %struct.ohash** %6, align 8
  %121 = getelementptr inbounds %struct.ohash, %struct.ohash* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i32 %119, i32* %126, align 8
  %127 = load %struct.ohash*, %struct.ohash** %6, align 8
  %128 = getelementptr inbounds %struct.ohash, %struct.ohash* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.ohash*, %struct.ohash** %6, align 8
  %136 = getelementptr inbounds %struct.ohash, %struct.ohash* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  store i8* %134, i8** %141, align 8
  %142 = load i8*, i8** @DELETED, align 8
  %143 = load %struct.ohash*, %struct.ohash** %6, align 8
  %144 = getelementptr inbounds %struct.ohash, %struct.ohash* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i8* %142, i8** %149, align 8
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %5, align 4
  br label %186

151:                                              ; preds = %114
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %5, align 4
  br label %186

153:                                              ; preds = %90, %66, %55
  br label %154

154:                                              ; preds = %153, %54
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %10, align 4
  %157 = add i32 %156, %155
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.ohash*, %struct.ohash** %6, align 8
  %160 = getelementptr inbounds %struct.ohash, %struct.ohash* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp uge i32 %158, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %154
  %164 = load %struct.ohash*, %struct.ohash** %6, align 8
  %165 = getelementptr inbounds %struct.ohash, %struct.ohash* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sub i32 %167, %166
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %163, %154
  br label %27

170:                                              ; preds = %27
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @NONE, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.ohash*, %struct.ohash** %6, align 8
  %179 = getelementptr inbounds %struct.ohash, %struct.ohash* %178, i32 0, i32 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  store i32 %177, i32* %184, align 8
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %176, %151, %118
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
