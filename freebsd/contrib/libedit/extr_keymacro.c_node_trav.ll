; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_keymacro.c_node_trav.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_keymacro.c_node_trav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i64, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32* }

@XK_NOD = common dso_local global i32 0, align 4
@XK_CMD = common dso_local global i64 0, align 8
@XK_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i8*, %struct.TYPE_5__*)* @node_trav to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_trav(i32* %0, %struct.TYPE_6__* %1, i8* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 8
  %13 = sext i8 %12 to i32
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @el_wgetc(i32* %24, i8* %25)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @XK_NOD, align 4
  store i32 %29, i32* %5, align 4
  br label %73

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = call i32 @node_trav(i32* %31, %struct.TYPE_6__* %34, i8* %35, %struct.TYPE_5__* %36)
  store i32 %37, i32* %5, align 4
  br label %73

38:                                               ; preds = %18
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = bitcast %struct.TYPE_5__* %39 to i8*
  %43 = bitcast %struct.TYPE_5__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XK_CMD, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i8*, i8** %8, align 8
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %49, %38
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %73

56:                                               ; preds = %4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = icmp ne %struct.TYPE_6__* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %68 = call i32 @node_trav(i32* %62, %struct.TYPE_6__* %65, i8* %66, %struct.TYPE_5__* %67)
  store i32 %68, i32* %5, align 4
  br label %73

69:                                               ; preds = %56
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* @XK_STR, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %61, %51, %30, %28
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @el_wgetc(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
