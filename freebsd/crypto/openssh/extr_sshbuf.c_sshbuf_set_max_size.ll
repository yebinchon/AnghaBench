; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_set_max_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_set_max_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i64, i32, i64, i64, i32*, i32*, i64 }

@.str = private unnamed_addr constant [27 x i8] c"set max buf = %p len = %zu\00", align 1
@SSH_ERR_BUFFER_READ_ONLY = common dso_local global i32 0, align 4
@SSHBUF_SIZE_MAX = common dso_local global i64 0, align 8
@SSH_ERR_NO_BUFFER_SPACE = common dso_local global i32 0, align 4
@SSHBUF_SIZE_INIT = common dso_local global i64 0, align 8
@SSHBUF_SIZE_INC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"new alloc = %zu\00", align 1
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"new-max\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_set_max_size(%struct.sshbuf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @SSHBUF_DBG(i8* %11)
  %13 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %14 = call i32 @sshbuf_check_sanity(%struct.sshbuf* %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %120

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %21 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %120

25:                                               ; preds = %18
  %26 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %27 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %32 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @SSH_ERR_BUFFER_READ_ONLY, align 4
  store i32 %36, i32* %3, align 4
  br label %120

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @SSHBUF_SIZE_MAX, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @SSH_ERR_NO_BUFFER_SPACE, align 4
  store i32 %42, i32* %3, align 4
  br label %120

43:                                               ; preds = %37
  %44 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %47 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @sshbuf_maybe_pack(%struct.sshbuf* %44, i32 %50)
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %54 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %107

57:                                               ; preds = %43
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %60 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ugt i64 %58, %61
  br i1 %62, label %63, label %107

63:                                               ; preds = %57
  %64 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %65 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SSHBUF_SIZE_INIT, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i64, i64* @SSHBUF_SIZE_INIT, align 8
  store i64 %70, i64* %6, align 8
  br label %77

71:                                               ; preds = %63
  %72 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %73 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @SSHBUF_SIZE_INC, align 4
  %76 = call i64 @ROUNDUP(i64 %74, i32 %75)
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %71, %69
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %5, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i64, i64* %5, align 8
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i64, i64* %6, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @SSHBUF_DBG(i8* %85)
  %87 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %88 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %91 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = call i32* @recallocarray(i32* %89, i64 %92, i64 %93, i32 1)
  store i32* %94, i32** %7, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %83
  %97 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %97, i32* %3, align 4
  br label %120

98:                                               ; preds = %83
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %101 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %100, i32 0, i32 4
  store i32* %99, i32** %101, align 8
  %102 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %103 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %102, i32 0, i32 5
  store i32* %99, i32** %103, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %106 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %105, i32 0, i32 3
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %98, %57, %43
  %108 = call i32 @SSHBUF_TELL(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i64, i64* %5, align 8
  %110 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %111 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %109, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @SSH_ERR_NO_BUFFER_SPACE, align 4
  store i32 %115, i32* %3, align 4
  br label %120

116:                                              ; preds = %107
  %117 = load i64, i64* %5, align 8
  %118 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %119 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %114, %96, %41, %35, %24, %16
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @sshbuf_check_sanity(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_maybe_pack(%struct.sshbuf*, i32) #1

declare dso_local i64 @ROUNDUP(i64, i32) #1

declare dso_local i32* @recallocarray(i32*, i64, i64, i32) #1

declare dso_local i32 @SSHBUF_TELL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
