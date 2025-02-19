; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lex.c_isc_lex_setsourcename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_lex.c_isc_lex_setsourcename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8* }

@ISC_R_NOTFOUND = common dso_local global i32 0, align 4
@ISC_R_NOMEMORY = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_lex_setsourcename(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i32 @VALID_LEX(%struct.TYPE_6__* %8)
  %10 = call i32 @REQUIRE(i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_7__* @HEAD(i32 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ISC_R_NOTFOUND, align 4
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @isc_mem_strdup(i32 %22, i8* %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %19
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @isc_mem_free(i32 %32, i8* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %29, %27, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_LEX(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_7__* @HEAD(i32) #1

declare dso_local i8* @isc_mem_strdup(i32, i8*) #1

declare dso_local i32 @isc_mem_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
