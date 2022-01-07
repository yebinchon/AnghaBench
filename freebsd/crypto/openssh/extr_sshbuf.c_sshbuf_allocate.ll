; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_allocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i64, i64, i64, i32*, i32* }

@.str = private unnamed_addr constant [28 x i8] c"allocate buf = %p len = %zu\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"allocate\00", align 1
@SSHBUF_SIZE_INC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"need %zu initial rlen %zu\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"adjusted rlen %zu\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"realloc fail\00", align 1
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_allocate(%struct.sshbuf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @SSHBUF_DBG(i8* %12)
  %14 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @sshbuf_check_reserve(%struct.sshbuf* %14, i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %109

20:                                               ; preds = %2
  %21 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %22 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %23 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %24, %25
  %27 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %28 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @sshbuf_maybe_pack(%struct.sshbuf* %21, i32 %31)
  %33 = call i32 @SSHBUF_TELL(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %36 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %34, %37
  %39 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %40 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ule i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %109

44:                                               ; preds = %20
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %47 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %51 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %49, %52
  store i64 %53, i64* %7, align 8
  %54 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %55 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %56, %57
  %59 = load i32, i32* @SSHBUF_SIZE_INC, align 4
  %60 = call i64 @ROUNDUP(i64 %58, i32 %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %6, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @SSHBUF_DBG(i8* %63)
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %67 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ugt i64 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %44
  %71 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %72 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %73, %74
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %70, %44
  %77 = load i64, i64* %6, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @SSHBUF_DBG(i8* %78)
  %80 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %81 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %84 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32* @recallocarray(i32* %82, i64 %85, i64 %86, i32 1)
  store i32* %87, i32** %8, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %76
  %90 = call i32 @SSHBUF_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %91, i32* %3, align 4
  br label %109

92:                                               ; preds = %76
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %95 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %98 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %97, i32 0, i32 3
  store i32* %96, i32** %98, align 8
  %99 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %100 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %99, i32 0, i32 4
  store i32* %96, i32** %100, align 8
  %101 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @sshbuf_check_reserve(%struct.sshbuf* %101, i64 %102)
  store i32 %103, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %92
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %109

107:                                              ; preds = %92
  %108 = call i32 @SSHBUF_TELL(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %105, %89, %43, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @sshbuf_check_reserve(%struct.sshbuf*, i64) #1

declare dso_local i32 @sshbuf_maybe_pack(%struct.sshbuf*, i32) #1

declare dso_local i32 @SSHBUF_TELL(i8*) #1

declare dso_local i64 @ROUNDUP(i64, i32) #1

declare dso_local i32* @recallocarray(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
