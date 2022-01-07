; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_setstrn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_setstrn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roffkv = type { %struct.TYPE_4__, %struct.roffkv*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roffkv**, i8*, i64, i8*, i64, i32)* @roff_setstrn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roff_setstrn(%struct.roffkv** %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.roffkv**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.roffkv*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.roffkv** %0, %struct.roffkv*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.roffkv**, %struct.roffkv*** %7, align 8
  %19 = load %struct.roffkv*, %struct.roffkv** %18, align 8
  store %struct.roffkv* %19, %struct.roffkv** %13, align 8
  br label %20

20:                                               ; preds = %43, %6
  %21 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %22 = icmp ne %struct.roffkv* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %26 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %32 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @strncmp(i32 %34, i8* %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %30, %23
  %40 = phi i1 [ true, %23 ], [ %38, %30 ]
  br label %41

41:                                               ; preds = %39, %20
  %42 = phi i1 [ false, %20 ], [ %40, %39 ]
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %45 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %44, i32 0, i32 1
  %46 = load %struct.roffkv*, %struct.roffkv** %45, align 8
  store %struct.roffkv* %46, %struct.roffkv** %13, align 8
  br label %20

47:                                               ; preds = %41
  %48 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %49 = icmp eq %struct.roffkv* null, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = call i8* @mandoc_malloc(i64 40)
  %52 = bitcast i8* %51 to %struct.roffkv*
  store %struct.roffkv* %52, %struct.roffkv** %13, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @mandoc_strndup(i8* %53, i64 %54)
  %56 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %57 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %61 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %64 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* null, i8** %65, align 8
  %66 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %67 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.roffkv**, %struct.roffkv*** %7, align 8
  %70 = load %struct.roffkv*, %struct.roffkv** %69, align 8
  %71 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %72 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %71, i32 0, i32 1
  store %struct.roffkv* %70, %struct.roffkv** %72, align 8
  %73 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %74 = load %struct.roffkv**, %struct.roffkv*** %7, align 8
  store %struct.roffkv* %73, %struct.roffkv** %74, align 8
  br label %91

75:                                               ; preds = %47
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 0, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %80 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %85 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i8* null, i8** %86, align 8
  %87 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %88 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %78, %75
  br label %91

91:                                               ; preds = %90, %50
  %92 = load i8*, i8** %10, align 8
  %93 = icmp eq i8* null, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %198

95:                                               ; preds = %91
  %96 = load i64, i64* %11, align 8
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 1, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 2, i32 1
  %101 = zext i32 %100 to i64
  %102 = add i64 %96, %101
  store i64 %102, i64* %17, align 8
  %103 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %104 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = icmp eq i8* null, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %95
  %109 = load i64, i64* %17, align 8
  %110 = call i8* @mandoc_malloc(i64 %109)
  %111 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %112 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  %114 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %115 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  store i8 0, i8* %117, align 1
  store i64 0, i64* %16, align 8
  br label %134

118:                                              ; preds = %95
  %119 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %120 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %16, align 8
  %123 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %124 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %17, align 8
  %129 = add i64 %127, %128
  %130 = call i8* @mandoc_realloc(i8* %126, i64 %129)
  %131 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %132 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  br label %134

134:                                              ; preds = %118, %108
  %135 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %136 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i64, i64* %16, align 8
  %140 = trunc i64 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8* %142, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %143

143:                                              ; preds = %168, %134
  %144 = load i32, i32* %15, align 4
  %145 = load i64, i64* %11, align 8
  %146 = trunc i64 %145 to i32
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %177

148:                                              ; preds = %143
  %149 = load i8*, i8** %10, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 92, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %148
  %157 = load i8*, i8** %10, align 8
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 92, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %168

168:                                              ; preds = %165, %156, %148
  %169 = load i8*, i8** %10, align 8
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %169, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = load i8*, i8** %14, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %14, align 8
  store i8 %174, i8* %175, align 1
  br label %143

177:                                              ; preds = %143
  %178 = load i32, i32* %12, align 4
  %179 = icmp slt i32 1, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i8*, i8** %14, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %14, align 8
  store i8 10, i8* %181, align 1
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i8*, i8** %14, align 8
  store i8 0, i8* %184, align 1
  %185 = load i8*, i8** %14, align 8
  %186 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %187 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = ptrtoint i8* %185 to i64
  %191 = ptrtoint i8* %189 to i64
  %192 = sub i64 %190, %191
  %193 = trunc i64 %192 to i32
  %194 = sext i32 %193 to i64
  %195 = load %struct.roffkv*, %struct.roffkv** %13, align 8
  %196 = getelementptr inbounds %struct.roffkv, %struct.roffkv* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  store i64 %194, i64* %197, align 8
  br label %198

198:                                              ; preds = %183, %94
  ret void
}

declare dso_local i64 @strncmp(i32, i8*, i64) #1

declare dso_local i8* @mandoc_malloc(i64) #1

declare dso_local i32 @mandoc_strndup(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @mandoc_realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
