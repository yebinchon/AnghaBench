; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_init_protoidarray.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_init_protoidarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.protoidlist = type { i32*, i64* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i8*)* }
%struct.protoidmem = type { i32* }

@eproto_db = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"init_protoidarray: strdup(eproto_db[i].s)\00", align 1
@protoidlist = common dso_local global %struct.protoidlist* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @init_protoidarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_protoidarray(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.protoidmem*, align 8
  %5 = alloca %struct.protoidlist*, align 8
  %6 = alloca [5 x i64], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0
  store i64 0, i64* %8, align 16
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 1
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 2
  store i64 0, i64* %10, align 16
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %54, %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @eproto_db, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %11
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @eproto_db, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @htons(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 3
  %28 = bitcast i64* %27 to i8*
  %29 = bitcast i32* %7 to i8*
  %30 = call i32 @memcpy(i8* %28, i8* %29, i32 2)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0
  %33 = call %struct.protoidmem* @lookup_protoid(%struct.TYPE_6__* %31, i64* %32)
  store %struct.protoidmem* %33, %struct.protoidmem** %4, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @eproto_db, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32* @strdup(i64 %39)
  %41 = load %struct.protoidmem*, %struct.protoidmem** %4, align 8
  %42 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.protoidmem*, %struct.protoidmem** %4, align 8
  %44 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %19
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = call i32 %50(%struct.TYPE_6__* %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %47, %19
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %11

57:                                               ; preds = %11
  %58 = load %struct.protoidlist*, %struct.protoidlist** @protoidlist, align 8
  store %struct.protoidlist* %58, %struct.protoidlist** %5, align 8
  br label %59

59:                                               ; preds = %81, %57
  %60 = load %struct.protoidlist*, %struct.protoidlist** %5, align 8
  %61 = getelementptr inbounds %struct.protoidlist, %struct.protoidlist* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = load %struct.protoidlist*, %struct.protoidlist** %5, align 8
  %67 = getelementptr inbounds %struct.protoidlist, %struct.protoidlist* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = call %struct.protoidmem* @lookup_protoid(%struct.TYPE_6__* %65, i64* %68)
  store %struct.protoidmem* %69, %struct.protoidmem** %4, align 8
  %70 = load %struct.protoidmem*, %struct.protoidmem** %4, align 8
  %71 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %81

75:                                               ; preds = %64
  %76 = load %struct.protoidlist*, %struct.protoidlist** %5, align 8
  %77 = getelementptr inbounds %struct.protoidlist, %struct.protoidlist* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.protoidmem*, %struct.protoidmem** %4, align 8
  %80 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %79, i32 0, i32 0
  store i32* %78, i32** %80, align 8
  br label %81

81:                                               ; preds = %75, %74
  %82 = load %struct.protoidlist*, %struct.protoidlist** %5, align 8
  %83 = getelementptr inbounds %struct.protoidlist, %struct.protoidlist* %82, i32 1
  store %struct.protoidlist* %83, %struct.protoidlist** %5, align 8
  br label %59

84:                                               ; preds = %59
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.protoidmem* @lookup_protoid(%struct.TYPE_6__*, i64*) #1

declare dso_local i32* @strdup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
