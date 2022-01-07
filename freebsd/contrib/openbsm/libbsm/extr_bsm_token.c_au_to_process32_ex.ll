; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_process32_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_process32_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }

@AU_IPv4 = common dso_local global i32 0, align 4
@AU_IPv6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AUT_PROCESS32_EX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_process32_ex(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_3__* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %17, align 8
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AU_IPv4, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %8
  %26 = load i32*, i32** %18, align 8
  %27 = load i32*, i32** %19, align 8
  %28 = call i32 @GET_TOKEN_AREA(i32* %26, i32* %27, i32 44)
  br label %42

29:                                               ; preds = %8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @AU_IPv6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32*, i32** %18, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = call i32 @GET_TOKEN_AREA(i32* %36, i32* %37, i32 56)
  br label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* @errno, align 4
  store i32* null, i32** %9, align 8
  br label %113

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32*, i32** %18, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32* null, i32** %9, align 8
  br label %113

46:                                               ; preds = %42
  %47 = load i32*, i32** %19, align 8
  %48 = load i32, i32* @AUT_PROCESS32_EX, align 4
  %49 = call i32 @ADD_U_CHAR(i32* %47, i32 %48)
  %50 = load i32*, i32** %19, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ADD_U_INT32(i32* %50, i32 %51)
  %53 = load i32*, i32** %19, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @ADD_U_INT32(i32* %53, i32 %54)
  %56 = load i32*, i32** %19, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @ADD_U_INT32(i32* %56, i32 %57)
  %59 = load i32*, i32** %19, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @ADD_U_INT32(i32* %59, i32 %60)
  %62 = load i32*, i32** %19, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @ADD_U_INT32(i32* %62, i32 %63)
  %65 = load i32*, i32** %19, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @ADD_U_INT32(i32* %65, i32 %66)
  %68 = load i32*, i32** %19, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @ADD_U_INT32(i32* %68, i32 %69)
  %71 = load i32*, i32** %19, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ADD_U_INT32(i32* %71, i32 %74)
  %76 = load i32*, i32** %19, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ADD_U_INT32(i32* %76, i32 %79)
  %81 = load i32*, i32** %19, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = call i32 @ADD_MEM(i32* %81, i32* %85, i32 4)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AU_IPv6, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %46
  %93 = load i32*, i32** %19, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = call i32 @ADD_MEM(i32* %93, i32* %97, i32 4)
  %99 = load i32*, i32** %19, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = call i32 @ADD_MEM(i32* %99, i32* %103, i32 4)
  %105 = load i32*, i32** %19, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = call i32 @ADD_MEM(i32* %105, i32* %109, i32 4)
  br label %111

111:                                              ; preds = %92, %46
  %112 = load i32*, i32** %18, align 8
  store i32* %112, i32** %9, align 8
  br label %113

113:                                              ; preds = %111, %45, %39
  %114 = load i32*, i32** %9, align 8
  ret i32* %114
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT32(i32*, i32) #1

declare dso_local i32 @ADD_MEM(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
