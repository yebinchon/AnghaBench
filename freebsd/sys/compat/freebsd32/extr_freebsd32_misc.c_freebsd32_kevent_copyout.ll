; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_kevent_copyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_kevent_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32* }
%struct.freebsd32_kevent_args = type { i32 }
%struct.kevent32 = type { i32, i32, i32* }

@KQ_NEVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"count (%d) > KQ_NEVENTS\00", align 1
@ident = common dso_local global i32 0, align 4
@filter = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@fflags = common dso_local global i32 0, align 4
@udata = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kevent*, i32)* @freebsd32_kevent_copyout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freebsd32_kevent_copyout(i8* %0, %struct.kevent* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.freebsd32_kevent_args*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kevent* %1, %struct.kevent** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @KQ_NEVENTS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca %struct.kevent32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @KQ_NEVENTS, align 4
  %20 = icmp sle i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %21, i8* %24)
  %26 = load i8*, i8** %4, align 8
  %27 = bitcast i8* %26 to %struct.freebsd32_kevent_args*
  store %struct.freebsd32_kevent_args* %27, %struct.freebsd32_kevent_args** %7, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %193, %3
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %196

32:                                               ; preds = %28
  %33 = load %struct.kevent*, %struct.kevent** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.kevent, %struct.kevent* %33, i64 %35
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %17, i64 %38
  %40 = load i32, i32* @ident, align 4
  %41 = bitcast %struct.kevent* %36 to { i32, i32* }*
  %42 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %41, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = bitcast %struct.kevent32* %39 to { i64, i32* }*
  %47 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 16
  %49 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %46, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @CP(i32 %43, i32* %45, i64 %48, i32* %50, i32 %40)
  %52 = load %struct.kevent*, %struct.kevent** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.kevent, %struct.kevent* %52, i64 %54
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %17, i64 %57
  %59 = load i32, i32* @filter, align 4
  %60 = bitcast %struct.kevent* %55 to { i32, i32* }*
  %61 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %60, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = bitcast %struct.kevent32* %58 to { i64, i32* }*
  %66 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 16
  %68 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %65, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @CP(i32 %62, i32* %64, i64 %67, i32* %69, i32 %59)
  %71 = load %struct.kevent*, %struct.kevent** %5, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.kevent, %struct.kevent* %71, i64 %73
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %17, i64 %76
  %78 = load i32, i32* @flags, align 4
  %79 = bitcast %struct.kevent* %74 to { i32, i32* }*
  %80 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %79, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = bitcast %struct.kevent32* %77 to { i64, i32* }*
  %85 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 16
  %87 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %84, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @CP(i32 %81, i32* %83, i64 %86, i32* %88, i32 %78)
  %90 = load %struct.kevent*, %struct.kevent** %5, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.kevent, %struct.kevent* %90, i64 %92
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %17, i64 %95
  %97 = load i32, i32* @fflags, align 4
  %98 = bitcast %struct.kevent* %93 to { i32, i32* }*
  %99 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %98, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = bitcast %struct.kevent32* %96 to { i64, i32* }*
  %104 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 16
  %106 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %103, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @CP(i32 %100, i32* %102, i64 %105, i32* %107, i32 %97)
  %109 = load %struct.kevent*, %struct.kevent** %5, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.kevent, %struct.kevent* %109, i64 %111
  %113 = getelementptr inbounds %struct.kevent, %struct.kevent* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %17, i64 %116
  %118 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 16
  %119 = load %struct.kevent*, %struct.kevent** %5, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.kevent, %struct.kevent* %119, i64 %121
  %123 = getelementptr inbounds %struct.kevent, %struct.kevent* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %124, 32
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %17, i64 %127
  %129 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 4
  %130 = load %struct.kevent*, %struct.kevent** %5, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.kevent, %struct.kevent* %130, i64 %132
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %17, i64 %135
  %137 = load i32, i32* @udata, align 4
  %138 = bitcast %struct.kevent* %133 to { i32, i32* }*
  %139 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %138, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = bitcast %struct.kevent32* %136 to { i64, i32* }*
  %144 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 16
  %146 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %143, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @PTROUT_CP(i32 %140, i32* %142, i64 %145, i32* %147, i32 %137)
  store i32 0, i32* %12, align 4
  br label %149

149:                                              ; preds = %189, %32
  %150 = load i32, i32* %12, align 4
  %151 = load %struct.kevent*, %struct.kevent** %5, align 8
  %152 = getelementptr inbounds %struct.kevent, %struct.kevent* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @nitems(i32* %153)
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %192

156:                                              ; preds = %149
  %157 = load %struct.kevent*, %struct.kevent** %5, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.kevent, %struct.kevent* %157, i64 %159
  %161 = getelementptr inbounds %struct.kevent, %struct.kevent* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %17, i64 %169
  %171 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = mul nsw i32 2, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 %167, i32* %176, align 4
  %177 = load i32, i32* %10, align 4
  %178 = ashr i32 %177, 32
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %17, i64 %180
  %182 = getelementptr inbounds %struct.kevent32, %struct.kevent32* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %12, align 4
  %185 = mul nsw i32 2, %184
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  store i32 %178, i32* %188, align 4
  br label %189

189:                                              ; preds = %156
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %12, align 4
  br label %149

192:                                              ; preds = %149
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  br label %28

196:                                              ; preds = %28
  %197 = load %struct.freebsd32_kevent_args*, %struct.freebsd32_kevent_args** %7, align 8
  %198 = getelementptr inbounds %struct.freebsd32_kevent_args, %struct.freebsd32_kevent_args* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = mul i64 %201, 16
  %203 = trunc i64 %202 to i32
  %204 = call i32 @copyout(%struct.kevent32* %17, i32 %199, i32 %203)
  store i32 %204, i32* %13, align 4
  %205 = load i32, i32* %13, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %196
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.freebsd32_kevent_args*, %struct.freebsd32_kevent_args** %7, align 8
  %210 = getelementptr inbounds %struct.freebsd32_kevent_args, %struct.freebsd32_kevent_args* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %208
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %207, %196
  %214 = load i32, i32* %13, align 4
  %215 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %215)
  ret i32 %214
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @CP(i32, i32*, i64, i32*, i32) #2

declare dso_local i32 @PTROUT_CP(i32, i32*, i64, i32*, i32) #2

declare dso_local i32 @nitems(i32*) #2

declare dso_local i32 @copyout(%struct.kevent32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
