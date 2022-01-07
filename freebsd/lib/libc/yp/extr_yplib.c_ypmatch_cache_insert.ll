; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_ypmatch_cache_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_ypmatch_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_binding = type { i64, %struct.ypmatch_ent* }
%struct.ypmatch_ent = type { %struct.ypmatch_ent*, %struct.TYPE_8__, %struct.TYPE_7__, i64, %struct.ypmatch_ent* }
%struct.TYPE_8__ = type { i32, %struct.ypmatch_ent* }
%struct.TYPE_7__ = type { i32, %struct.ypmatch_ent* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@YPLIB_MAXCACHE = common dso_local global i64 0, align 8
@YPLIB_EXPIRE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dom_binding*, i8*, %struct.TYPE_10__*, %struct.TYPE_9__*)* @ypmatch_cache_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ypmatch_cache_insert(%struct.dom_binding* %0, i8* %1, %struct.TYPE_10__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca %struct.dom_binding*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.ypmatch_ent*, align 8
  %10 = alloca %struct.ypmatch_ent*, align 8
  %11 = alloca %struct.ypmatch_ent*, align 8
  %12 = alloca i64, align 8
  store %struct.dom_binding* %0, %struct.dom_binding** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %13 = load %struct.dom_binding*, %struct.dom_binding** %5, align 8
  %14 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.dom_binding*, %struct.dom_binding** %5, align 8
  %19 = call i32 @ypmatch_cache_expire(%struct.dom_binding* %18)
  br label %20

20:                                               ; preds = %17, %4
  %21 = load %struct.dom_binding*, %struct.dom_binding** %5, align 8
  %22 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @YPLIB_MAXCACHE, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %20
  store %struct.ypmatch_ent* null, %struct.ypmatch_ent** %10, align 8
  %27 = load %struct.dom_binding*, %struct.dom_binding** %5, align 8
  %28 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %27, i32 0, i32 1
  %29 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %28, align 8
  store %struct.ypmatch_ent* %29, %struct.ypmatch_ent** %11, align 8
  store i64 0, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = xor i64 %30, -1
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %46, %26
  %33 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %11, align 8
  %34 = icmp ne %struct.ypmatch_ent* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %11, align 8
  %37 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %11, align 8
  %43 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  %45 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %11, align 8
  store %struct.ypmatch_ent* %45, %struct.ypmatch_ent** %10, align 8
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %11, align 8
  %48 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %47, i32 0, i32 0
  %49 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %48, align 8
  store %struct.ypmatch_ent* %49, %struct.ypmatch_ent** %11, align 8
  br label %32

50:                                               ; preds = %32
  %51 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %10, align 8
  %52 = icmp eq %struct.ypmatch_ent* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %176

54:                                               ; preds = %50
  %55 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %10, align 8
  %56 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.dom_binding*, %struct.dom_binding** %5, align 8
  %58 = call i32 @ypmatch_cache_expire(%struct.dom_binding* %57)
  br label %59

59:                                               ; preds = %54, %20
  %60 = call i8* @malloc(i32 56)
  %61 = bitcast i8* %60 to %struct.ypmatch_ent*
  store %struct.ypmatch_ent* %61, %struct.ypmatch_ent** %9, align 8
  %62 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %63 = icmp eq %struct.ypmatch_ent* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %176

65:                                               ; preds = %59
  %66 = load i8*, i8** %6, align 8
  %67 = call %struct.ypmatch_ent* @strdup(i8* %66)
  %68 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %69 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %68, i32 0, i32 4
  store %struct.ypmatch_ent* %67, %struct.ypmatch_ent** %69, align 8
  %70 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %71 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %70, i32 0, i32 4
  %72 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %71, align 8
  %73 = icmp eq %struct.ypmatch_ent* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %76 = call i32 @free(%struct.ypmatch_ent* %75)
  br label %176

77:                                               ; preds = %65
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @malloc(i32 %80)
  %82 = bitcast i8* %81 to %struct.ypmatch_ent*
  %83 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %84 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store %struct.ypmatch_ent* %82, %struct.ypmatch_ent** %85, align 8
  %86 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %87 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %88, align 8
  %90 = icmp eq %struct.ypmatch_ent* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %77
  %92 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %93 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %92, i32 0, i32 4
  %94 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %93, align 8
  %95 = call i32 @free(%struct.ypmatch_ent* %94)
  %96 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %97 = call i32 @free(%struct.ypmatch_ent* %96)
  br label %176

98:                                               ; preds = %77
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @malloc(i32 %101)
  %103 = bitcast i8* %102 to %struct.ypmatch_ent*
  %104 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %105 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store %struct.ypmatch_ent* %103, %struct.ypmatch_ent** %106, align 8
  %107 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %108 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %109, align 8
  %111 = icmp eq %struct.ypmatch_ent* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %98
  %113 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %114 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %115, align 8
  %117 = call i32 @free(%struct.ypmatch_ent* %116)
  %118 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %119 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %118, i32 0, i32 4
  %120 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %119, align 8
  %121 = call i32 @free(%struct.ypmatch_ent* %120)
  %122 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %123 = call i32 @free(%struct.ypmatch_ent* %122)
  br label %176

124:                                              ; preds = %98
  %125 = call i64 @time(i32* null)
  %126 = load i64, i64* @YPLIB_EXPIRE, align 8
  %127 = add nsw i64 %125, %126
  %128 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %129 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %128, i32 0, i32 3
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %134 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %140 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %146 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %147, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @bcopy(i32 %144, %struct.ypmatch_ent* %148, i32 %151)
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %157 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %158, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @bcopy(i32 %155, %struct.ypmatch_ent* %159, i32 %162)
  %164 = load %struct.dom_binding*, %struct.dom_binding** %5, align 8
  %165 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %164, i32 0, i32 1
  %166 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %165, align 8
  %167 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %168 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %167, i32 0, i32 0
  store %struct.ypmatch_ent* %166, %struct.ypmatch_ent** %168, align 8
  %169 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %9, align 8
  %170 = load %struct.dom_binding*, %struct.dom_binding** %5, align 8
  %171 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %170, i32 0, i32 1
  store %struct.ypmatch_ent* %169, %struct.ypmatch_ent** %171, align 8
  %172 = load %struct.dom_binding*, %struct.dom_binding** %5, align 8
  %173 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %173, align 8
  br label %176

176:                                              ; preds = %124, %112, %91, %74, %64, %53
  ret void
}

declare dso_local i32 @ypmatch_cache_expire(%struct.dom_binding*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local %struct.ypmatch_ent* @strdup(i8*) #1

declare dso_local i32 @free(%struct.ypmatch_ent*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @bcopy(i32, %struct.ypmatch_ent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
