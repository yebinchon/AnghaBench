; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/kld/dyn_sysctl/extr_dyn_sysctl.c_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/kld/dyn_sysctl/extr_dyn_sysctl.c_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"Initializing contexts and creating subtrees.\0A\0A\00", align 1
@clist = common dso_local global i32 0, align 4
@clist1 = common dso_local global i32 0, align 4
@clist2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"TREE\09\09ROOT\09\09  NAME\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"dyn_sysctl\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"dyn_sysctl root node\00", align 1
@a_root = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"SYSCTL_ADD_NODE failed!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"long_a\00", align 1
@a = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"just to try\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"int_b\00", align 1
@b = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"just to try 1\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"nextlevel\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"one level down\00", align 1
@a_root1 = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"string_c\00", align 1
@c = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"just to try 2\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"1. (%p)\09/\09\09  dyn_sysctl\0A\00", align 1
@_kern = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@sysctl_dyn_sysctl_test = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"I can be here, too\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"   (%p)\09/kern\09\09  dyn_sysctl\0A\00", align 1
@b_root = common dso_local global i32* null, align 8
@.str.18 = private unnamed_addr constant [10 x i8] c"string_c1\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"2. (%p)\09/\09\09  dyn_sysctl\09(overlapping #1)\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"dependent node\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"shouldn't panic\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"3. (%p)\09/kern/dyn_sysctl  bad\09\09(WRONG!)\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"1. Try to free ctx1 (%p): \00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"failed: expected. Need to remove ctx3 first.\0A\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"HELP! sysctl_ctx_free(%p) succeeded. EXPECT PANIC!!!\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"2. Try to free ctx3 (%p): \00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"sysctl_ctx_free(%p) failed!\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"sysctl_remove_oid(%p) succeeded\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"Ok\0A\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"3. Try to free ctx1 (%p) again: \00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"4. Try to free ctx2 (%p): \00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %137 [
    i32 129, label %10
    i32 128, label %94
  ]

10:                                               ; preds = %3
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @sysctl_ctx_init(i32* @clist)
  %13 = call i32 @sysctl_ctx_init(i32* @clist1)
  %14 = call i32 @sysctl_ctx_init(i32* @clist2)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @OID_AUTO, align 4
  %17 = load i32, i32* @CTLFLAG_RW, align 4
  %18 = call i32* @SYSCTL_ADD_ROOT_NODE(i32* @clist, i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32* %18, i32** @a_root, align 8
  %19 = load i32, i32* @OID_AUTO, align 4
  %20 = load i32, i32* @CTLFLAG_RW, align 4
  %21 = call i32* @SYSCTL_ADD_ROOT_NODE(i32* @clist1, i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32* %21, i32** @a_root, align 8
  %22 = load i32*, i32** @a_root, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %10
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %141

27:                                               ; preds = %10
  %28 = load i32*, i32** @a_root, align 8
  %29 = call i32 @SYSCTL_CHILDREN(i32* %28)
  %30 = load i32, i32* @OID_AUTO, align 4
  %31 = load i32, i32* @CTLFLAG_RW, align 4
  %32 = call i32 @SYSCTL_ADD_LONG(i32* @clist, i32 %29, i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %31, i32* @a, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %33 = load i32*, i32** @a_root, align 8
  %34 = call i32 @SYSCTL_CHILDREN(i32* %33)
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLFLAG_RW, align 4
  %37 = call i32 @SYSCTL_ADD_INT(i32* @clist, i32 %34, i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %36, i32* @b, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %38 = load i32*, i32** @a_root, align 8
  %39 = call i32 @SYSCTL_CHILDREN(i32* %38)
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i32, i32* @CTLFLAG_RD, align 4
  %42 = call i32* @SYSCTL_ADD_NODE(i32* @clist, i32 %39, i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %41, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  store i32* %42, i32** @a_root1, align 8
  %43 = load i32*, i32** @a_root1, align 8
  %44 = call i32 @SYSCTL_CHILDREN(i32* %43)
  %45 = load i32, i32* @OID_AUTO, align 4
  %46 = load i32, i32* @CTLFLAG_RD, align 4
  %47 = load i32, i32* @c, align 4
  %48 = call i32 @SYSCTL_ADD_STRING(i32* @clist, i32 %44, i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %46, i32 %47, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32* @clist)
  %50 = load i32, i32* @_kern, align 4
  %51 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %50)
  %52 = load i32, i32* @OID_AUTO, align 4
  %53 = load i32, i32* @CTLFLAG_RW, align 4
  %54 = call i32* @SYSCTL_ADD_NODE(i32* @clist, i32 %51, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32* %54, i32** @a_root1, align 8
  %55 = load i32*, i32** @a_root1, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %27
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %4, align 4
  br label %141

60:                                               ; preds = %27
  %61 = load i32*, i32** @a_root1, align 8
  %62 = call i32 @SYSCTL_CHILDREN(i32* %61)
  %63 = load i32, i32* @OID_AUTO, align 4
  %64 = load i32, i32* @CTLTYPE_STRING, align 4
  %65 = load i32, i32* @CTLFLAG_RD, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @sysctl_dyn_sysctl_test, align 4
  %68 = call i32 @SYSCTL_ADD_PROC(i32* @clist, i32 %62, i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %66, i32* null, i32 0, i32 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32* @clist)
  %70 = load i32*, i32** @a_root, align 8
  %71 = call i32 @SYSCTL_CHILDREN(i32* %70)
  %72 = load i32, i32* @OID_AUTO, align 4
  %73 = load i32, i32* @CTLFLAG_RD, align 4
  %74 = call i32* @SYSCTL_ADD_NODE(i32* @clist1, i32 %71, i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %73, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  store i32* %74, i32** @b_root, align 8
  %75 = load i32*, i32** @b_root, align 8
  %76 = call i32 @SYSCTL_CHILDREN(i32* %75)
  %77 = load i32, i32* @OID_AUTO, align 4
  %78 = load i32, i32* @CTLFLAG_RD, align 4
  %79 = load i32, i32* @c, align 4
  %80 = call i32 @SYSCTL_ADD_STRING(i32* @clist1, i32 %76, i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 %78, i32 %79, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), i32* @clist1)
  %82 = load i32*, i32** @a_root1, align 8
  %83 = call i32 @SYSCTL_CHILDREN(i32* %82)
  %84 = load i32, i32* @OID_AUTO, align 4
  %85 = load i32, i32* @CTLFLAG_RW, align 4
  %86 = call i32* @SYSCTL_ADD_NODE(i32* @clist2, i32 %83, i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %85, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  store i32* %86, i32** @b_root, align 8
  %87 = load i32*, i32** @b_root, align 8
  %88 = call i32 @SYSCTL_CHILDREN(i32* %87)
  %89 = load i32, i32* @OID_AUTO, align 4
  %90 = load i32, i32* @CTLFLAG_RD, align 4
  %91 = load i32, i32* @c, align 4
  %92 = call i32 @SYSCTL_ADD_STRING(i32* @clist2, i32 %88, i32 %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %90, i32 %91, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i32* @clist2)
  br label %139

94:                                               ; preds = %3
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32* @clist)
  %96 = call i32 @sysctl_ctx_free(i32* @clist)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0))
  br label %102

100:                                              ; preds = %94
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i64 0, i64 0), i32* @clist)
  br label %102

102:                                              ; preds = %100, %98
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32* @clist2)
  %104 = call i32 @sysctl_ctx_free(i32* @clist2)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i32* @clist2)
  %108 = load i32*, i32** @b_root, align 8
  %109 = call i32 @sysctl_remove_oid(i32* %108, i32 1, i32 1)
  %110 = load i32*, i32** @b_root, align 8
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i32* %110)
  br label %114

112:                                              ; preds = %102
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %106
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i64 0, i64 0), i32* @clist)
  %116 = call i32 @sysctl_ctx_free(i32* @clist)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i32* @clist)
  %120 = load i32*, i32** @a_root1, align 8
  %121 = call i32 @sysctl_remove_oid(i32* %120, i32 1, i32 1)
  %122 = load i32*, i32** @a_root1, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i32* %122)
  br label %126

124:                                              ; preds = %114
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %118
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32* @clist1)
  %128 = call i32 @sysctl_ctx_free(i32* @clist1)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i32* @clist1)
  %132 = load i32*, i32** @a_root, align 8
  %133 = call i32 @sysctl_remove_oid(i32* %132, i32 1, i32 1)
  br label %136

134:                                              ; preds = %126
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %130
  br label %139

137:                                              ; preds = %3
  %138 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %137, %136, %60
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %57, %24
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32* @SYSCTL_ADD_ROOT_NODE(i32*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_LONG(i32*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_STRING(i32*, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @sysctl_remove_oid(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
