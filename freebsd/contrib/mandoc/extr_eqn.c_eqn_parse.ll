; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eqn_node = type { i8*, i8*, i8*, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.eqn_box* }
%struct.eqn_box = type { i8*, i8*, i32, i32, i32, %struct.eqn_box*, %struct.eqn_box*, %struct.eqn_box*, %struct.eqn_box*, %struct.eqn_box*, i8*, i32*, i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c" ^~\00", align 1
@MODE_TOK = common dso_local global i32 0, align 4
@MODE_NOSUB = common dso_local global i32 0, align 4
@MODE_QUOTED = common dso_local global i32 0, align 4
@MANDOCERR_REQ_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"tdefine\00", align 1
@MODE_SUB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@eqn_toks = common dso_local global i32* null, align 8
@MANDOCERR_EQN_NOBOX = common dso_local global i32 0, align 4
@EQN_TEXT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EQN_LIST = common dso_local global i8* null, align 8
@EQNFONT_ROMAN = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"\\[ad]\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\\[->]\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\\[<>]\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\\[a~]\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\\[ul]\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\\[rn]\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"\\[a.]\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\\[ha]\00", align 1
@EQNFONT_FAT = common dso_local global i8* null, align 8
@EQNFONT_ITALIC = common dso_local global i8* null, align 8
@EQNFONT_BOLD = common dso_local global i8* null, align 8
@MANDOCERR_IT_NONUM = common dso_local global i32 0, align 4
@EQNPOS_SUB = common dso_local global i32 0, align 4
@EQNPOS_SUP = common dso_local global i32 0, align 4
@EQNPOS_SUBSUP = common dso_local global i32 0, align 4
@EQNPOS_SQRT = common dso_local global i32 0, align 4
@EQNPOS_OVER = common dso_local global i32 0, align 4
@EQNPOS_FROM = common dso_local global i32 0, align 4
@EQNPOS_FROMTO = common dso_local global i32 0, align 4
@EQNPOS_TO = common dso_local global i32 0, align 4
@EQN_SUBEXPR = common dso_local global i8* null, align 8
@MANDOCERR_BLK_NOTOPEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"ceiling\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\\[rc]\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"\\[rf]\00", align 1
@EQN_PILE = common dso_local global i8* null, align 8
@EQN_MATRIX = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"\\[lc]\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"\\[lf]\00", align 1
@MANDOCERR_IT_STRAY = common dso_local global i32 0, align 4
@EQNFONT_NONE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eqn_parse(%struct.eqn_node* %0) #0 {
  %2 = alloca %struct.eqn_node*, align 8
  %3 = alloca %struct.eqn_box*, align 8
  %4 = alloca %struct.eqn_box*, align 8
  %5 = alloca %struct.eqn_box*, align 8
  %6 = alloca %struct.eqn_box*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.eqn_node* %0, %struct.eqn_node** %2, align 8
  %14 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %15 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load %struct.eqn_box*, %struct.eqn_box** %17, align 8
  store %struct.eqn_box* %18, %struct.eqn_box** %5, align 8
  %19 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %20 = icmp ne %struct.eqn_box* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %24 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %1166

28:                                               ; preds = %1
  %29 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %30 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %33 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strspn(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  %38 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %39 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %41 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %40, i32 0, i32 1
  store i8* %37, i8** %41, align 8
  br label %42

42:                                               ; preds = %1165, %28
  %43 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %44 = load i32, i32* @MODE_TOK, align 4
  %45 = call i32 @eqn_next(%struct.eqn_node* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  switch i32 %46, label %1163 [
    i32 132, label %47
    i32 148, label %50
    i32 169, label %50
    i32 135, label %53
    i32 168, label %77
    i32 158, label %80
    i32 150, label %104
    i32 152, label %104
    i32 164, label %105
    i32 129, label %105
    i32 131, label %105
    i32 175, label %105
    i32 134, label %105
    i32 156, label %105
    i32 167, label %105
    i32 166, label %105
    i32 159, label %188
    i32 176, label %188
    i32 165, label %188
    i32 130, label %188
    i32 162, label %212
    i32 142, label %212
    i32 155, label %212
    i32 174, label %212
    i32 140, label %254
    i32 157, label %254
    i32 161, label %337
    i32 133, label %337
    i32 138, label %337
    i32 137, label %337
    i32 139, label %495
    i32 147, label %520
    i32 143, label %583
    i32 173, label %583
    i32 172, label %745
    i32 153, label %745
    i32 146, label %835
    i32 151, label %835
    i32 141, label %835
    i32 170, label %835
    i32 171, label %835
    i32 154, label %835
    i32 144, label %835
    i32 177, label %857
    i32 149, label %902
    i32 163, label %924
    i32 128, label %925
    i32 160, label %925
    i32 145, label %925
    i32 136, label %925
  ]

47:                                               ; preds = %42
  %48 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %49 = call i32 @eqn_undef(%struct.eqn_node* %48)
  br label %1165

50:                                               ; preds = %42, %42
  %51 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %52 = call i32 @eqn_def(%struct.eqn_node* %51)
  br label %1165

53:                                               ; preds = %42
  %54 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %55 = load i32, i32* @MODE_NOSUB, align 4
  %56 = call i32 @eqn_next(%struct.eqn_node* %54, i32 %55)
  %57 = icmp eq i32 %56, 163
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %60 = load i32, i32* @MODE_QUOTED, align 4
  %61 = call i32 @eqn_next(%struct.eqn_node* %59, i32 %60)
  %62 = icmp eq i32 %61, 163
  br i1 %62, label %63, label %76

63:                                               ; preds = %58, %53
  %64 = load i32, i32* @MANDOCERR_REQ_EMPTY, align 4
  %65 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %66 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %71 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %70, i32 0, i32 5
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %64, i32 %69, i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %63, %58
  br label %1165

77:                                               ; preds = %42
  %78 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %79 = call i32 @eqn_delim(%struct.eqn_node* %78)
  br label %1165

80:                                               ; preds = %42
  %81 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %82 = load i32, i32* @MODE_SUB, align 4
  %83 = call i32 @eqn_next(%struct.eqn_node* %81, i32 %82)
  %84 = icmp eq i32 %83, 163
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load i32, i32* @MANDOCERR_REQ_EMPTY, align 4
  %87 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %88 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %87, i32 0, i32 5
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %93 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %92, i32 0, i32 5
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** @eqn_toks, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %86, i32 %91, i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %85, %80
  br label %1165

104:                                              ; preds = %42, %42
  br label %1165

105:                                              ; preds = %42, %42, %42, %42, %42, %42, %42, %42
  %106 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %107 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %106, i32 0, i32 7
  %108 = load %struct.eqn_box*, %struct.eqn_box** %107, align 8
  %109 = icmp eq %struct.eqn_box* %108, null
  br i1 %109, label %110, label %137

110:                                              ; preds = %105
  %111 = load i32, i32* @MANDOCERR_EQN_NOBOX, align 4
  %112 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %113 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %112, i32 0, i32 5
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %118 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %117, i32 0, i32 5
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32*, i32** @eqn_toks, align 8
  %123 = load i32, i32* %10, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %111, i32 %116, i32 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %129 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %130 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %128, %struct.eqn_box* %129)
  store %struct.eqn_box* %130, %struct.eqn_box** %3, align 8
  %131 = load i8*, i8** @EQN_TEXT, align 8
  %132 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %133 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %135 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %136 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %110, %105
  %138 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %139 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %140 = call %struct.eqn_box* @eqn_box_makebinary(%struct.eqn_node* %138, %struct.eqn_box* %139)
  store %struct.eqn_box* %140, %struct.eqn_box** %5, align 8
  %141 = load i8*, i8** @EQN_LIST, align 8
  %142 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %143 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %145 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %144, i32 0, i32 2
  store i32 1, i32* %145, align 8
  %146 = load i8*, i8** @EQNFONT_ROMAN, align 8
  %147 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %148 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %147, i32 0, i32 10
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %10, align 4
  switch i32 %149, label %182 [
    i32 166, label %150
    i32 129, label %154
    i32 164, label %158
    i32 134, label %162
    i32 131, label %166
    i32 175, label %170
    i32 167, label %174
    i32 156, label %178
  ]

150:                                              ; preds = %137
  %151 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %152 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %153 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %152, i32 0, i32 14
  store i8* %151, i8** %153, align 8
  br label %184

154:                                              ; preds = %137
  %155 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %156 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %157 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %156, i32 0, i32 14
  store i8* %155, i8** %157, align 8
  br label %184

158:                                              ; preds = %137
  %159 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %160 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %161 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %160, i32 0, i32 14
  store i8* %159, i8** %161, align 8
  br label %184

162:                                              ; preds = %137
  %163 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %164 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %165 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %164, i32 0, i32 14
  store i8* %163, i8** %165, align 8
  br label %184

166:                                              ; preds = %137
  %167 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %168 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %169 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %168, i32 0, i32 15
  store i8* %167, i8** %169, align 8
  br label %184

170:                                              ; preds = %137
  %171 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %172 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %173 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %172, i32 0, i32 14
  store i8* %171, i8** %173, align 8
  br label %184

174:                                              ; preds = %137
  %175 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %176 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %177 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %176, i32 0, i32 14
  store i8* %175, i8** %177, align 8
  br label %184

178:                                              ; preds = %137
  %179 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %180 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %181 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %180, i32 0, i32 14
  store i8* %179, i8** %181, align 8
  br label %184

182:                                              ; preds = %137
  %183 = call i32 (...) @abort() #3
  unreachable

184:                                              ; preds = %178, %174, %170, %166, %162, %158, %154, %150
  %185 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %186 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %185, i32 0, i32 5
  %187 = load %struct.eqn_box*, %struct.eqn_box** %186, align 8
  store %struct.eqn_box* %187, %struct.eqn_box** %5, align 8
  br label %1165

188:                                              ; preds = %42, %42, %42, %42
  %189 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %190 = load i32, i32* @MODE_SUB, align 4
  %191 = call i32 @eqn_next(%struct.eqn_node* %189, i32 %190)
  %192 = icmp eq i32 %191, 163
  br i1 %192, label %193, label %211

193:                                              ; preds = %188
  %194 = load i32, i32* @MANDOCERR_REQ_EMPTY, align 4
  %195 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %196 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %195, i32 0, i32 5
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %201 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %200, i32 0, i32 5
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32*, i32** @eqn_toks, align 8
  %206 = load i32, i32* %10, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %194, i32 %199, i32 %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %209)
  br label %211

211:                                              ; preds = %193, %188
  br label %1165

212:                                              ; preds = %42, %42, %42, %42
  br label %213

213:                                              ; preds = %221, %212
  %214 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %215 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %218 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %216, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %213
  %222 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %223 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %222, i32 0, i32 5
  %224 = load %struct.eqn_box*, %struct.eqn_box** %223, align 8
  store %struct.eqn_box* %224, %struct.eqn_box** %5, align 8
  br label %213

225:                                              ; preds = %213
  %226 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %227 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %228 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %226, %struct.eqn_box* %227)
  store %struct.eqn_box* %228, %struct.eqn_box** %5, align 8
  %229 = load i8*, i8** @EQN_LIST, align 8
  %230 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %231 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %230, i32 0, i32 0
  store i8* %229, i8** %231, align 8
  %232 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %233 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %232, i32 0, i32 2
  store i32 1, i32* %233, align 8
  %234 = load i32, i32* %10, align 4
  switch i32 %234, label %251 [
    i32 162, label %235
    i32 142, label %239
    i32 155, label %243
    i32 174, label %247
  ]

235:                                              ; preds = %225
  %236 = load i8*, i8** @EQNFONT_FAT, align 8
  %237 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %238 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %237, i32 0, i32 10
  store i8* %236, i8** %238, align 8
  br label %253

239:                                              ; preds = %225
  %240 = load i8*, i8** @EQNFONT_ROMAN, align 8
  %241 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %242 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %241, i32 0, i32 10
  store i8* %240, i8** %242, align 8
  br label %253

243:                                              ; preds = %225
  %244 = load i8*, i8** @EQNFONT_ITALIC, align 8
  %245 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %246 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %245, i32 0, i32 10
  store i8* %244, i8** %246, align 8
  br label %253

247:                                              ; preds = %225
  %248 = load i8*, i8** @EQNFONT_BOLD, align 8
  %249 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %250 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %249, i32 0, i32 10
  store i8* %248, i8** %250, align 8
  br label %253

251:                                              ; preds = %225
  %252 = call i32 (...) @abort() #3
  unreachable

253:                                              ; preds = %247, %243, %239, %235
  br label %1165

254:                                              ; preds = %42, %42
  %255 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %256 = load i32, i32* @MODE_SUB, align 4
  %257 = call i32 @eqn_next(%struct.eqn_node* %255, i32 %256)
  %258 = icmp eq i32 %257, 163
  br i1 %258, label %259, label %277

259:                                              ; preds = %254
  %260 = load i32, i32* @MANDOCERR_REQ_EMPTY, align 4
  %261 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %262 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %261, i32 0, i32 5
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %267 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %266, i32 0, i32 5
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32*, i32** @eqn_toks, align 8
  %272 = load i32, i32* %10, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %260, i32 %265, i32 %270, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %275)
  br label %1165

277:                                              ; preds = %254
  %278 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %279 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %278, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %282 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %281, i32 0, i32 3
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @mandoc_strntoi(i8* %280, i8* %283, i32 10)
  store i32 %284, i32* %13, align 4
  %285 = load i32, i32* %13, align 4
  %286 = icmp eq i32 -1, %285
  br i1 %286, label %287, label %305

287:                                              ; preds = %277
  %288 = load i32, i32* @MANDOCERR_IT_NONUM, align 4
  %289 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %290 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %289, i32 0, i32 5
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %295 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %294, i32 0, i32 5
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32*, i32** @eqn_toks, align 8
  %300 = load i32, i32* %10, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %288, i32 %293, i32 %298, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %303)
  br label %1165

305:                                              ; preds = %277
  %306 = load i32, i32* %10, align 4
  %307 = icmp eq i32 157, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %305
  %309 = load i32, i32* %13, align 4
  %310 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %311 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %310, i32 0, i32 4
  store i32 %309, i32* %311, align 8
  br label %1165

312:                                              ; preds = %305
  br label %313

313:                                              ; preds = %321, %312
  %314 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %315 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %318 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = icmp eq i32 %316, %319
  br i1 %320, label %321, label %325

321:                                              ; preds = %313
  %322 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %323 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %322, i32 0, i32 5
  %324 = load %struct.eqn_box*, %struct.eqn_box** %323, align 8
  store %struct.eqn_box* %324, %struct.eqn_box** %5, align 8
  br label %313

325:                                              ; preds = %313
  %326 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %327 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %328 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %326, %struct.eqn_box* %327)
  store %struct.eqn_box* %328, %struct.eqn_box** %5, align 8
  %329 = load i8*, i8** @EQN_LIST, align 8
  %330 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %331 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %330, i32 0, i32 0
  store i8* %329, i8** %331, align 8
  %332 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %333 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %332, i32 0, i32 2
  store i32 1, i32* %333, align 8
  %334 = load i32, i32* %13, align 4
  %335 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %336 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %335, i32 0, i32 4
  store i32 %334, i32* %336, align 8
  br label %1165

337:                                              ; preds = %42, %42, %42, %42
  %338 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %339 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %338, i32 0, i32 7
  %340 = load %struct.eqn_box*, %struct.eqn_box** %339, align 8
  %341 = icmp eq %struct.eqn_box* %340, null
  br i1 %341, label %342, label %369

342:                                              ; preds = %337
  %343 = load i32, i32* @MANDOCERR_EQN_NOBOX, align 4
  %344 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %345 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %344, i32 0, i32 5
  %346 = load %struct.TYPE_2__*, %struct.TYPE_2__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %350 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %349, i32 0, i32 5
  %351 = load %struct.TYPE_2__*, %struct.TYPE_2__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32*, i32** @eqn_toks, align 8
  %355 = load i32, i32* %10, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %343, i32 %348, i32 %353, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %358)
  %360 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %361 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %362 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %360, %struct.eqn_box* %361)
  store %struct.eqn_box* %362, %struct.eqn_box** %3, align 8
  %363 = load i8*, i8** @EQN_TEXT, align 8
  %364 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %365 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %364, i32 0, i32 0
  store i8* %363, i8** %365, align 8
  %366 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %367 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %368 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %367, i32 0, i32 1
  store i8* %366, i8** %368, align 8
  br label %369

369:                                              ; preds = %342, %337
  br label %370

370:                                              ; preds = %382, %369
  %371 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %372 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = icmp eq i32 %373, 1
  br i1 %374, label %375, label %380

375:                                              ; preds = %370
  %376 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %377 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 4
  %379 = icmp eq i32 %378, 1
  br label %380

380:                                              ; preds = %375, %370
  %381 = phi i1 [ false, %370 ], [ %379, %375 ]
  br i1 %381, label %382, label %386

382:                                              ; preds = %380
  %383 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %384 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %383, i32 0, i32 5
  %385 = load %struct.eqn_box*, %struct.eqn_box** %384, align 8
  store %struct.eqn_box* %385, %struct.eqn_box** %5, align 8
  br label %370

386:                                              ; preds = %380
  %387 = load i32, i32* %10, align 4
  %388 = icmp eq i32 %387, 161
  br i1 %388, label %392, label %389

389:                                              ; preds = %386
  %390 = load i32, i32* %10, align 4
  %391 = icmp eq i32 %390, 133
  br i1 %391, label %392, label %441

392:                                              ; preds = %389, %386
  %393 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  store %struct.eqn_box* %393, %struct.eqn_box** %3, align 8
  br label %394

394:                                              ; preds = %429, %392
  %395 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %396 = icmp ne %struct.eqn_box* %395, null
  br i1 %396, label %397, label %433

397:                                              ; preds = %394
  %398 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %399 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %398, i32 0, i32 13
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @EQNPOS_SUB, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %427, label %403

403:                                              ; preds = %397
  %404 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %405 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %404, i32 0, i32 13
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* @EQNPOS_SUP, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %427, label %409

409:                                              ; preds = %403
  %410 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %411 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %410, i32 0, i32 13
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* @EQNPOS_SUBSUP, align 4
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %427, label %415

415:                                              ; preds = %409
  %416 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %417 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %416, i32 0, i32 13
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @EQNPOS_SQRT, align 4
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %427, label %421

421:                                              ; preds = %415
  %422 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %423 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %422, i32 0, i32 13
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @EQNPOS_OVER, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %427, label %428

427:                                              ; preds = %421, %415, %409, %403, %397
  br label %433

428:                                              ; preds = %421
  br label %429

429:                                              ; preds = %428
  %430 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %431 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %430, i32 0, i32 5
  %432 = load %struct.eqn_box*, %struct.eqn_box** %431, align 8
  store %struct.eqn_box* %432, %struct.eqn_box** %3, align 8
  br label %394

433:                                              ; preds = %427, %394
  %434 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %435 = icmp ne %struct.eqn_box* %434, null
  br i1 %435, label %436, label %440

436:                                              ; preds = %433
  %437 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %438 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %437, i32 0, i32 5
  %439 = load %struct.eqn_box*, %struct.eqn_box** %438, align 8
  store %struct.eqn_box* %439, %struct.eqn_box** %5, align 8
  br label %440

440:                                              ; preds = %436, %433
  br label %441

441:                                              ; preds = %440, %389
  %442 = load i32, i32* %10, align 4
  %443 = icmp eq i32 %442, 137
  br i1 %443, label %444, label %456

444:                                              ; preds = %441
  %445 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %446 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %445, i32 0, i32 13
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* @EQNPOS_SUB, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %456

450:                                              ; preds = %444
  %451 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %452 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %451, i32 0, i32 2
  store i32 3, i32* %452, align 8
  %453 = load i32, i32* @EQNPOS_SUBSUP, align 4
  %454 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %455 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %454, i32 0, i32 13
  store i32 %453, i32* %455, align 8
  br label %1165

456:                                              ; preds = %444, %441
  %457 = load i32, i32* %10, align 4
  %458 = icmp eq i32 %457, 133
  br i1 %458, label %459, label %471

459:                                              ; preds = %456
  %460 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %461 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %460, i32 0, i32 13
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* @EQNPOS_FROM, align 4
  %464 = icmp eq i32 %462, %463
  br i1 %464, label %465, label %471

465:                                              ; preds = %459
  %466 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %467 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %466, i32 0, i32 2
  store i32 3, i32* %467, align 8
  %468 = load i32, i32* @EQNPOS_FROMTO, align 4
  %469 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %470 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %469, i32 0, i32 13
  store i32 %468, i32* %470, align 8
  br label %1165

471:                                              ; preds = %459, %456
  %472 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %473 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %474 = call %struct.eqn_box* @eqn_box_makebinary(%struct.eqn_node* %472, %struct.eqn_box* %473)
  store %struct.eqn_box* %474, %struct.eqn_box** %5, align 8
  %475 = load i32, i32* %10, align 4
  switch i32 %475, label %492 [
    i32 161, label %476
    i32 133, label %480
    i32 137, label %484
    i32 138, label %488
  ]

476:                                              ; preds = %471
  %477 = load i32, i32* @EQNPOS_FROM, align 4
  %478 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %479 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %478, i32 0, i32 13
  store i32 %477, i32* %479, align 8
  br label %494

480:                                              ; preds = %471
  %481 = load i32, i32* @EQNPOS_TO, align 4
  %482 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %483 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %482, i32 0, i32 13
  store i32 %481, i32* %483, align 8
  br label %494

484:                                              ; preds = %471
  %485 = load i32, i32* @EQNPOS_SUP, align 4
  %486 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %487 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %486, i32 0, i32 13
  store i32 %485, i32* %487, align 8
  br label %494

488:                                              ; preds = %471
  %489 = load i32, i32* @EQNPOS_SUB, align 4
  %490 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %491 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %490, i32 0, i32 13
  store i32 %489, i32* %491, align 8
  br label %494

492:                                              ; preds = %471
  %493 = call i32 (...) @abort() #3
  unreachable

494:                                              ; preds = %488, %484, %480, %476
  br label %1165

495:                                              ; preds = %42
  br label %496

496:                                              ; preds = %504, %495
  %497 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %498 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %501 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %500, i32 0, i32 2
  %502 = load i32, i32* %501, align 8
  %503 = icmp eq i32 %499, %502
  br i1 %503, label %504, label %508

504:                                              ; preds = %496
  %505 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %506 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %505, i32 0, i32 5
  %507 = load %struct.eqn_box*, %struct.eqn_box** %506, align 8
  store %struct.eqn_box* %507, %struct.eqn_box** %5, align 8
  br label %496

508:                                              ; preds = %496
  %509 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %510 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %511 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %509, %struct.eqn_box* %510)
  store %struct.eqn_box* %511, %struct.eqn_box** %5, align 8
  %512 = load i8*, i8** @EQN_SUBEXPR, align 8
  %513 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %514 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %513, i32 0, i32 0
  store i8* %512, i8** %514, align 8
  %515 = load i32, i32* @EQNPOS_SQRT, align 4
  %516 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %517 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %516, i32 0, i32 13
  store i32 %515, i32* %517, align 8
  %518 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %519 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %518, i32 0, i32 2
  store i32 1, i32* %519, align 8
  br label %1165

520:                                              ; preds = %42
  %521 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %522 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %521, i32 0, i32 7
  %523 = load %struct.eqn_box*, %struct.eqn_box** %522, align 8
  %524 = icmp eq %struct.eqn_box* %523, null
  br i1 %524, label %525, label %552

525:                                              ; preds = %520
  %526 = load i32, i32* @MANDOCERR_EQN_NOBOX, align 4
  %527 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %528 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %527, i32 0, i32 5
  %529 = load %struct.TYPE_2__*, %struct.TYPE_2__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %533 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %532, i32 0, i32 5
  %534 = load %struct.TYPE_2__*, %struct.TYPE_2__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load i32*, i32** @eqn_toks, align 8
  %538 = load i32, i32* %10, align 4
  %539 = zext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %537, i64 %539
  %541 = load i32, i32* %540, align 4
  %542 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %526, i32 %531, i32 %536, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %541)
  %543 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %544 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %545 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %543, %struct.eqn_box* %544)
  store %struct.eqn_box* %545, %struct.eqn_box** %3, align 8
  %546 = load i8*, i8** @EQN_TEXT, align 8
  %547 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %548 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %547, i32 0, i32 0
  store i8* %546, i8** %548, align 8
  %549 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %550 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %551 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %550, i32 0, i32 1
  store i8* %549, i8** %551, align 8
  br label %552

552:                                              ; preds = %525, %520
  br label %553

553:                                              ; preds = %561, %552
  %554 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %555 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %554, i32 0, i32 3
  %556 = load i32, i32* %555, align 4
  %557 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %558 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %557, i32 0, i32 2
  %559 = load i32, i32* %558, align 8
  %560 = icmp eq i32 %556, %559
  br i1 %560, label %561, label %565

561:                                              ; preds = %553
  %562 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %563 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %562, i32 0, i32 5
  %564 = load %struct.eqn_box*, %struct.eqn_box** %563, align 8
  store %struct.eqn_box* %564, %struct.eqn_box** %5, align 8
  br label %553

565:                                              ; preds = %553
  br label %566

566:                                              ; preds = %572, %565
  %567 = load i8*, i8** @EQN_SUBEXPR, align 8
  %568 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %569 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %568, i32 0, i32 0
  %570 = load i8*, i8** %569, align 8
  %571 = icmp eq i8* %567, %570
  br i1 %571, label %572, label %576

572:                                              ; preds = %566
  %573 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %574 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %573, i32 0, i32 5
  %575 = load %struct.eqn_box*, %struct.eqn_box** %574, align 8
  store %struct.eqn_box* %575, %struct.eqn_box** %5, align 8
  br label %566

576:                                              ; preds = %566
  %577 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %578 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %579 = call %struct.eqn_box* @eqn_box_makebinary(%struct.eqn_node* %577, %struct.eqn_box* %578)
  store %struct.eqn_box* %579, %struct.eqn_box** %5, align 8
  %580 = load i32, i32* @EQNPOS_OVER, align 4
  %581 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %582 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %581, i32 0, i32 13
  store i32 %580, i32* %582, align 8
  br label %1165

583:                                              ; preds = %42, %42
  %584 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  store %struct.eqn_box* %584, %struct.eqn_box** %3, align 8
  br label %585

585:                                              ; preds = %609, %583
  %586 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %587 = icmp ne %struct.eqn_box* %586, null
  br i1 %587, label %588, label %613

588:                                              ; preds = %585
  %589 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %590 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %589, i32 0, i32 0
  %591 = load i8*, i8** %590, align 8
  %592 = load i8*, i8** @EQN_LIST, align 8
  %593 = icmp eq i8* %591, %592
  br i1 %593, label %594, label %608

594:                                              ; preds = %588
  %595 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %596 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %595, i32 0, i32 2
  %597 = load i32, i32* %596, align 8
  %598 = icmp sgt i32 %597, 1
  br i1 %598, label %599, label %608

599:                                              ; preds = %594
  %600 = load i32, i32* %10, align 4
  %601 = icmp eq i32 %600, 173
  br i1 %601, label %607, label %602

602:                                              ; preds = %599
  %603 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %604 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %603, i32 0, i32 11
  %605 = load i32*, i32** %604, align 8
  %606 = icmp ne i32* %605, null
  br i1 %606, label %607, label %608

607:                                              ; preds = %602, %599
  br label %613

608:                                              ; preds = %602, %594, %588
  br label %609

609:                                              ; preds = %608
  %610 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %611 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %610, i32 0, i32 5
  %612 = load %struct.eqn_box*, %struct.eqn_box** %611, align 8
  store %struct.eqn_box* %612, %struct.eqn_box** %3, align 8
  br label %585

613:                                              ; preds = %607, %585
  %614 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %615 = icmp eq %struct.eqn_box* %614, null
  br i1 %615, label %616, label %634

616:                                              ; preds = %613
  %617 = load i32, i32* @MANDOCERR_BLK_NOTOPEN, align 4
  %618 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %619 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %618, i32 0, i32 5
  %620 = load %struct.TYPE_2__*, %struct.TYPE_2__** %619, align 8
  %621 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %620, i32 0, i32 1
  %622 = load i32, i32* %621, align 4
  %623 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %624 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %623, i32 0, i32 5
  %625 = load %struct.TYPE_2__*, %struct.TYPE_2__** %624, align 8
  %626 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 8
  %628 = load i32*, i32** @eqn_toks, align 8
  %629 = load i32, i32* %10, align 4
  %630 = zext i32 %629 to i64
  %631 = getelementptr inbounds i32, i32* %628, i64 %630
  %632 = load i32, i32* %631, align 4
  %633 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %617, i32 %622, i32 %627, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %632)
  br label %1165

634:                                              ; preds = %613
  %635 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  store %struct.eqn_box* %635, %struct.eqn_box** %5, align 8
  %636 = load i32, i32* %10, align 4
  %637 = icmp eq i32 143, %636
  br i1 %637, label %638, label %699

638:                                              ; preds = %634
  %639 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %640 = load i32, i32* @MODE_SUB, align 4
  %641 = call i32 @eqn_next(%struct.eqn_node* %639, i32 %640)
  %642 = icmp eq i32 %641, 163
  br i1 %642, label %643, label %661

643:                                              ; preds = %638
  %644 = load i32, i32* @MANDOCERR_REQ_EMPTY, align 4
  %645 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %646 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %645, i32 0, i32 5
  %647 = load %struct.TYPE_2__*, %struct.TYPE_2__** %646, align 8
  %648 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %647, i32 0, i32 1
  %649 = load i32, i32* %648, align 4
  %650 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %651 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %650, i32 0, i32 5
  %652 = load %struct.TYPE_2__*, %struct.TYPE_2__** %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %652, i32 0, i32 0
  %654 = load i32, i32* %653, align 8
  %655 = load i32*, i32** @eqn_toks, align 8
  %656 = load i32, i32* %10, align 4
  %657 = zext i32 %656 to i64
  %658 = getelementptr inbounds i32, i32* %655, i64 %657
  %659 = load i32, i32* %658, align 4
  %660 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %644, i32 %649, i32 %654, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %659)
  br label %1165

661:                                              ; preds = %638
  %662 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %663 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %662, i32 0, i32 1
  %664 = load i8*, i8** %663, align 8
  %665 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %666 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %665, i32 0, i32 3
  %667 = load i8*, i8** %666, align 8
  %668 = call i32 @STRNEQ(i8* %664, i8* %667, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 7)
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %670, label %674

670:                                              ; preds = %661
  %671 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %672 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %673 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %672, i32 0, i32 12
  store i8* %671, i8** %673, align 8
  br label %698

674:                                              ; preds = %661
  %675 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %676 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %675, i32 0, i32 1
  %677 = load i8*, i8** %676, align 8
  %678 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %679 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %678, i32 0, i32 3
  %680 = load i8*, i8** %679, align 8
  %681 = call i32 @STRNEQ(i8* %677, i8* %680, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %683, label %687

683:                                              ; preds = %674
  %684 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %685 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %686 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %685, i32 0, i32 12
  store i8* %684, i8** %686, align 8
  br label %697

687:                                              ; preds = %674
  %688 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %689 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %688, i32 0, i32 1
  %690 = load i8*, i8** %689, align 8
  %691 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %692 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %691, i32 0, i32 3
  %693 = load i8*, i8** %692, align 8
  %694 = call i8* @mandoc_strndup(i8* %690, i8* %693)
  %695 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %696 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %695, i32 0, i32 12
  store i8* %694, i8** %696, align 8
  br label %697

697:                                              ; preds = %687, %683
  br label %698

698:                                              ; preds = %697, %670
  br label %699

699:                                              ; preds = %698, %634
  %700 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %701 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %700, i32 0, i32 5
  %702 = load %struct.eqn_box*, %struct.eqn_box** %701, align 8
  store %struct.eqn_box* %702, %struct.eqn_box** %5, align 8
  %703 = load i32, i32* %10, align 4
  %704 = icmp eq i32 %703, 173
  br i1 %704, label %705, label %721

705:                                              ; preds = %699
  %706 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %707 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %706, i32 0, i32 0
  %708 = load i8*, i8** %707, align 8
  %709 = load i8*, i8** @EQN_PILE, align 8
  %710 = icmp eq i8* %708, %709
  br i1 %710, label %717, label %711

711:                                              ; preds = %705
  %712 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %713 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %712, i32 0, i32 0
  %714 = load i8*, i8** %713, align 8
  %715 = load i8*, i8** @EQN_MATRIX, align 8
  %716 = icmp eq i8* %714, %715
  br i1 %716, label %717, label %721

717:                                              ; preds = %711, %705
  %718 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %719 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %718, i32 0, i32 5
  %720 = load %struct.eqn_box*, %struct.eqn_box** %719, align 8
  store %struct.eqn_box* %720, %struct.eqn_box** %5, align 8
  br label %721

721:                                              ; preds = %717, %711, %699
  br label %722

722:                                              ; preds = %740, %721
  %723 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %724 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %723, i32 0, i32 0
  %725 = load i8*, i8** %724, align 8
  %726 = load i8*, i8** @EQN_LIST, align 8
  %727 = icmp eq i8* %725, %726
  br i1 %727, label %728, label %738

728:                                              ; preds = %722
  %729 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %730 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %729, i32 0, i32 2
  %731 = load i32, i32* %730, align 8
  %732 = icmp eq i32 %731, 1
  br i1 %732, label %733, label %738

733:                                              ; preds = %728
  %734 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %735 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %734, i32 0, i32 3
  %736 = load i32, i32* %735, align 4
  %737 = icmp eq i32 %736, 1
  br label %738

738:                                              ; preds = %733, %728, %722
  %739 = phi i1 [ false, %728 ], [ false, %722 ], [ %737, %733 ]
  br i1 %739, label %740, label %744

740:                                              ; preds = %738
  %741 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %742 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %741, i32 0, i32 5
  %743 = load %struct.eqn_box*, %struct.eqn_box** %742, align 8
  store %struct.eqn_box* %743, %struct.eqn_box** %5, align 8
  br label %722

744:                                              ; preds = %738
  br label %1165

745:                                              ; preds = %42, %42
  br label %746

746:                                              ; preds = %754, %745
  %747 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %748 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %747, i32 0, i32 3
  %749 = load i32, i32* %748, align 4
  %750 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %751 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %750, i32 0, i32 2
  %752 = load i32, i32* %751, align 8
  %753 = icmp eq i32 %749, %752
  br i1 %753, label %754, label %758

754:                                              ; preds = %746
  %755 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %756 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %755, i32 0, i32 5
  %757 = load %struct.eqn_box*, %struct.eqn_box** %756, align 8
  store %struct.eqn_box* %757, %struct.eqn_box** %5, align 8
  br label %746

758:                                              ; preds = %746
  %759 = load i32, i32* %10, align 4
  %760 = icmp eq i32 153, %759
  br i1 %760, label %761, label %784

761:                                              ; preds = %758
  %762 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %763 = load i32, i32* @MODE_SUB, align 4
  %764 = call i32 @eqn_next(%struct.eqn_node* %762, i32 %763)
  %765 = icmp eq i32 %764, 163
  br i1 %765, label %766, label %784

766:                                              ; preds = %761
  %767 = load i32, i32* @MANDOCERR_REQ_EMPTY, align 4
  %768 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %769 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %768, i32 0, i32 5
  %770 = load %struct.TYPE_2__*, %struct.TYPE_2__** %769, align 8
  %771 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %770, i32 0, i32 1
  %772 = load i32, i32* %771, align 4
  %773 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %774 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %773, i32 0, i32 5
  %775 = load %struct.TYPE_2__*, %struct.TYPE_2__** %774, align 8
  %776 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %775, i32 0, i32 0
  %777 = load i32, i32* %776, align 8
  %778 = load i32*, i32** @eqn_toks, align 8
  %779 = load i32, i32* %10, align 4
  %780 = zext i32 %779 to i64
  %781 = getelementptr inbounds i32, i32* %778, i64 %780
  %782 = load i32, i32* %781, align 4
  %783 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %767, i32 %772, i32 %777, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %782)
  br label %1165

784:                                              ; preds = %761, %758
  %785 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %786 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %787 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %785, %struct.eqn_box* %786)
  store %struct.eqn_box* %787, %struct.eqn_box** %5, align 8
  %788 = load i8*, i8** @EQN_LIST, align 8
  %789 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %790 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %789, i32 0, i32 0
  store i8* %788, i8** %790, align 8
  %791 = load i32, i32* %10, align 4
  %792 = icmp eq i32 153, %791
  br i1 %792, label %793, label %834

793:                                              ; preds = %784
  %794 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %795 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %794, i32 0, i32 1
  %796 = load i8*, i8** %795, align 8
  %797 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %798 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %797, i32 0, i32 3
  %799 = load i8*, i8** %798, align 8
  %800 = call i32 @STRNEQ(i8* %796, i8* %799, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 7)
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %802, label %807

802:                                              ; preds = %793
  %803 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %804 = bitcast i8* %803 to i32*
  %805 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %806 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %805, i32 0, i32 11
  store i32* %804, i32** %806, align 8
  br label %833

807:                                              ; preds = %793
  %808 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %809 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %808, i32 0, i32 1
  %810 = load i8*, i8** %809, align 8
  %811 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %812 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %811, i32 0, i32 3
  %813 = load i8*, i8** %812, align 8
  %814 = call i32 @STRNEQ(i8* %810, i8* %813, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %815 = icmp ne i32 %814, 0
  br i1 %815, label %816, label %821

816:                                              ; preds = %807
  %817 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %818 = bitcast i8* %817 to i32*
  %819 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %820 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %819, i32 0, i32 11
  store i32* %818, i32** %820, align 8
  br label %832

821:                                              ; preds = %807
  %822 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %823 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %822, i32 0, i32 1
  %824 = load i8*, i8** %823, align 8
  %825 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %826 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %825, i32 0, i32 3
  %827 = load i8*, i8** %826, align 8
  %828 = call i8* @mandoc_strndup(i8* %824, i8* %827)
  %829 = bitcast i8* %828 to i32*
  %830 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %831 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %830, i32 0, i32 11
  store i32* %829, i32** %831, align 8
  br label %832

832:                                              ; preds = %821, %816
  br label %833

833:                                              ; preds = %832, %802
  br label %834

834:                                              ; preds = %833, %784
  br label %1165

835:                                              ; preds = %42, %42, %42, %42, %42, %42, %42
  br label %836

836:                                              ; preds = %844, %835
  %837 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %838 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %837, i32 0, i32 3
  %839 = load i32, i32* %838, align 4
  %840 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %841 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %840, i32 0, i32 2
  %842 = load i32, i32* %841, align 8
  %843 = icmp eq i32 %839, %842
  br i1 %843, label %844, label %848

844:                                              ; preds = %836
  %845 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %846 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %845, i32 0, i32 5
  %847 = load %struct.eqn_box*, %struct.eqn_box** %846, align 8
  store %struct.eqn_box* %847, %struct.eqn_box** %5, align 8
  br label %836

848:                                              ; preds = %836
  %849 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %850 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %851 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %849, %struct.eqn_box* %850)
  store %struct.eqn_box* %851, %struct.eqn_box** %5, align 8
  %852 = load i8*, i8** @EQN_PILE, align 8
  %853 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %854 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %853, i32 0, i32 0
  store i8* %852, i8** %854, align 8
  %855 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %856 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %855, i32 0, i32 2
  store i32 1, i32* %856, align 8
  br label %1165

857:                                              ; preds = %42
  %858 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  store %struct.eqn_box* %858, %struct.eqn_box** %3, align 8
  br label %859

859:                                              ; preds = %870, %857
  %860 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %861 = icmp ne %struct.eqn_box* %860, null
  br i1 %861, label %862, label %874

862:                                              ; preds = %859
  %863 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %864 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %863, i32 0, i32 0
  %865 = load i8*, i8** %864, align 8
  %866 = load i8*, i8** @EQN_PILE, align 8
  %867 = icmp eq i8* %865, %866
  br i1 %867, label %868, label %869

868:                                              ; preds = %862
  br label %874

869:                                              ; preds = %862
  br label %870

870:                                              ; preds = %869
  %871 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %872 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %871, i32 0, i32 5
  %873 = load %struct.eqn_box*, %struct.eqn_box** %872, align 8
  store %struct.eqn_box* %873, %struct.eqn_box** %3, align 8
  br label %859

874:                                              ; preds = %868, %859
  %875 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %876 = icmp eq %struct.eqn_box* %875, null
  br i1 %876, label %877, label %895

877:                                              ; preds = %874
  %878 = load i32, i32* @MANDOCERR_IT_STRAY, align 4
  %879 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %880 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %879, i32 0, i32 5
  %881 = load %struct.TYPE_2__*, %struct.TYPE_2__** %880, align 8
  %882 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %881, i32 0, i32 1
  %883 = load i32, i32* %882, align 4
  %884 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %885 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %884, i32 0, i32 5
  %886 = load %struct.TYPE_2__*, %struct.TYPE_2__** %885, align 8
  %887 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %886, i32 0, i32 0
  %888 = load i32, i32* %887, align 8
  %889 = load i32*, i32** @eqn_toks, align 8
  %890 = load i32, i32* %10, align 4
  %891 = zext i32 %890 to i64
  %892 = getelementptr inbounds i32, i32* %889, i64 %891
  %893 = load i32, i32* %892, align 4
  %894 = call i32 (i32, i32, i32, i8*, ...) @mandoc_msg(i32 %878, i32 %883, i32 %888, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %893)
  br label %1165

895:                                              ; preds = %874
  %896 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %897 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %898 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %896, %struct.eqn_box* %897)
  store %struct.eqn_box* %898, %struct.eqn_box** %5, align 8
  %899 = load i8*, i8** @EQN_LIST, align 8
  %900 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %901 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %900, i32 0, i32 0
  store i8* %899, i8** %901, align 8
  br label %1165

902:                                              ; preds = %42
  br label %903

903:                                              ; preds = %911, %902
  %904 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %905 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %904, i32 0, i32 3
  %906 = load i32, i32* %905, align 4
  %907 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %908 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %907, i32 0, i32 2
  %909 = load i32, i32* %908, align 8
  %910 = icmp eq i32 %906, %909
  br i1 %910, label %911, label %915

911:                                              ; preds = %903
  %912 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %913 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %912, i32 0, i32 5
  %914 = load %struct.eqn_box*, %struct.eqn_box** %913, align 8
  store %struct.eqn_box* %914, %struct.eqn_box** %5, align 8
  br label %903

915:                                              ; preds = %903
  %916 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %917 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %918 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %916, %struct.eqn_box* %917)
  store %struct.eqn_box* %918, %struct.eqn_box** %5, align 8
  %919 = load i8*, i8** @EQN_MATRIX, align 8
  %920 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %921 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %920, i32 0, i32 0
  store i8* %919, i8** %921, align 8
  %922 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %923 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %922, i32 0, i32 2
  store i32 1, i32* %923, align 8
  br label %1165

924:                                              ; preds = %42
  br label %1166

925:                                              ; preds = %42, %42, %42, %42
  %926 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %927 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %926, i32 0, i32 1
  %928 = load i8*, i8** %927, align 8
  store i8* %928, i8** %9, align 8
  %929 = load i8*, i8** %9, align 8
  %930 = icmp ne i8* %929, null
  %931 = zext i1 %930 to i32
  %932 = call i32 @assert(i32 %931)
  br label %933

933:                                              ; preds = %941, %925
  %934 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %935 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %934, i32 0, i32 3
  %936 = load i32, i32* %935, align 4
  %937 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %938 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %937, i32 0, i32 2
  %939 = load i32, i32* %938, align 8
  %940 = icmp eq i32 %936, %939
  br i1 %940, label %941, label %945

941:                                              ; preds = %933
  %942 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %943 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %942, i32 0, i32 5
  %944 = load %struct.eqn_box*, %struct.eqn_box** %943, align 8
  store %struct.eqn_box* %944, %struct.eqn_box** %5, align 8
  br label %933

945:                                              ; preds = %933
  %946 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %947 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %948 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %946, %struct.eqn_box* %947)
  store %struct.eqn_box* %948, %struct.eqn_box** %3, align 8
  %949 = load i8*, i8** @EQN_TEXT, align 8
  %950 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %951 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %950, i32 0, i32 0
  store i8* %949, i8** %951, align 8
  %952 = load i8*, i8** %9, align 8
  %953 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %954 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %953, i32 0, i32 1
  store i8* %952, i8** %954, align 8
  %955 = load i32, i32* %10, align 4
  switch i32 %955, label %972 [
    i32 160, label %956
    i32 145, label %960
    i32 136, label %971
  ]

956:                                              ; preds = %945
  %957 = load i8*, i8** @EQNFONT_ROMAN, align 8
  %958 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %959 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %958, i32 0, i32 10
  store i8* %957, i8** %959, align 8
  br label %1162

960:                                              ; preds = %945
  %961 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %962 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %961, i32 0, i32 10
  %963 = load i8*, i8** %962, align 8
  %964 = load i8*, i8** @EQNFONT_NONE, align 8
  %965 = icmp eq i8* %963, %964
  br i1 %965, label %966, label %970

966:                                              ; preds = %960
  %967 = load i8*, i8** @EQNFONT_ITALIC, align 8
  %968 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %969 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %968, i32 0, i32 10
  store i8* %967, i8** %969, align 8
  br label %970

970:                                              ; preds = %966, %960
  br label %1162

971:                                              ; preds = %945
  br label %1162

972:                                              ; preds = %945
  %973 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %974 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %973, i32 0, i32 10
  %975 = load i8*, i8** %974, align 8
  %976 = load i8*, i8** @EQNFONT_NONE, align 8
  %977 = icmp ne i8* %975, %976
  br i1 %977, label %983, label %978

978:                                              ; preds = %972
  %979 = load i8*, i8** %9, align 8
  %980 = load i8, i8* %979, align 1
  %981 = sext i8 %980 to i32
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %983, label %984

983:                                              ; preds = %978, %972
  br label %1162

984:                                              ; preds = %978
  %985 = load i8*, i8** %9, align 8
  %986 = getelementptr inbounds i8, i8* %985, i64 -1
  store i8* %986, i8** %8, align 8
  store i32 0, i32* %12, align 4
  store %struct.eqn_box* null, %struct.eqn_box** %6, align 8
  br label %987

987:                                              ; preds = %1118, %1066, %1028, %984
  %988 = load i8*, i8** %8, align 8
  %989 = getelementptr inbounds i8, i8* %988, i32 1
  store i8* %989, i8** %8, align 8
  store i8* %988, i8** %7, align 8
  %990 = load i32, i32* %12, align 4
  store i32 %990, i32* %11, align 4
  %991 = load i8*, i8** %8, align 8
  %992 = load i8, i8* %991, align 1
  %993 = call i32 @isalpha(i8 zeroext %992)
  %994 = icmp ne i32 %993, 0
  br i1 %994, label %995, label %996

995:                                              ; preds = %987
  br label %1023

996:                                              ; preds = %987
  %997 = load i8*, i8** %8, align 8
  %998 = load i8, i8* %997, align 1
  %999 = call i32 @isdigit(i8 zeroext %998)
  %1000 = icmp ne i32 %999, 0
  br i1 %1000, label %1019, label %1001

1001:                                             ; preds = %996
  %1002 = load i8*, i8** %8, align 8
  %1003 = load i8, i8* %1002, align 1
  %1004 = sext i8 %1003 to i32
  %1005 = icmp eq i32 %1004, 46
  br i1 %1005, label %1006, label %1017

1006:                                             ; preds = %1001
  %1007 = load i32, i32* %11, align 4
  %1008 = icmp eq i32 %1007, 1
  br i1 %1008, label %1015, label %1009

1009:                                             ; preds = %1006
  %1010 = load i8*, i8** %8, align 8
  %1011 = getelementptr inbounds i8, i8* %1010, i64 1
  %1012 = load i8, i8* %1011, align 1
  %1013 = call i32 @isdigit(i8 zeroext %1012)
  %1014 = icmp ne i32 %1013, 0
  br label %1015

1015:                                             ; preds = %1009, %1006
  %1016 = phi i1 [ true, %1006 ], [ %1014, %1009 ]
  br label %1017

1017:                                             ; preds = %1015, %1001
  %1018 = phi i1 [ false, %1001 ], [ %1016, %1015 ]
  br label %1019

1019:                                             ; preds = %1017, %996
  %1020 = phi i1 [ true, %996 ], [ %1018, %1017 ]
  %1021 = zext i1 %1020 to i64
  %1022 = select i1 %1020, i32 1, i32 2
  br label %1023

1023:                                             ; preds = %1019, %995
  %1024 = phi i32 [ 0, %995 ], [ %1022, %1019 ]
  store i32 %1024, i32* %12, align 4
  %1025 = load i8*, i8** %7, align 8
  %1026 = load i8*, i8** %9, align 8
  %1027 = icmp ult i8* %1025, %1026
  br i1 %1027, label %1028, label %1029

1028:                                             ; preds = %1023
  br label %987

1029:                                             ; preds = %1023
  %1030 = load i32, i32* %11, align 4
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1032, label %1034

1032:                                             ; preds = %1029
  %1033 = load i8*, i8** @EQNFONT_ITALIC, align 8
  br label %1036

1034:                                             ; preds = %1029
  %1035 = load i8*, i8** @EQNFONT_ROMAN, align 8
  br label %1036

1036:                                             ; preds = %1034, %1032
  %1037 = phi i8* [ %1033, %1032 ], [ %1035, %1034 ]
  %1038 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %1039 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1038, i32 0, i32 10
  store i8* %1037, i8** %1039, align 8
  %1040 = load i8*, i8** %7, align 8
  %1041 = load i8, i8* %1040, align 1
  %1042 = sext i8 %1041 to i32
  %1043 = icmp eq i32 %1042, 92
  br i1 %1043, label %1044, label %1046

1044:                                             ; preds = %1036
  %1045 = call i32 @mandoc_escape(i8** %8, i32* null, i32* null)
  br label %1046

1046:                                             ; preds = %1044, %1036
  %1047 = load i8*, i8** %8, align 8
  %1048 = load i8, i8* %1047, align 1
  %1049 = sext i8 %1048 to i32
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1052

1051:                                             ; preds = %1046
  br label %1154

1052:                                             ; preds = %1046
  %1053 = load i32, i32* %12, align 4
  %1054 = load i32, i32* %11, align 4
  %1055 = icmp eq i32 %1053, %1054
  br i1 %1055, label %1056, label %1067

1056:                                             ; preds = %1052
  %1057 = load i8*, i8** %7, align 8
  %1058 = load i8, i8* %1057, align 1
  %1059 = sext i8 %1058 to i32
  %1060 = icmp ne i32 %1059, 44
  br i1 %1060, label %1061, label %1067

1061:                                             ; preds = %1056
  %1062 = load i8*, i8** %8, align 8
  %1063 = load i8, i8* %1062, align 1
  %1064 = sext i8 %1063 to i32
  %1065 = icmp ne i32 %1064, 44
  br i1 %1065, label %1066, label %1067

1066:                                             ; preds = %1061
  br label %987

1067:                                             ; preds = %1061, %1056, %1052
  %1068 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %1069 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1068, i32 0, i32 3
  %1070 = load i32, i32* %1069, align 4
  %1071 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %1072 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1071, i32 0, i32 2
  %1073 = load i32, i32* %1072, align 8
  %1074 = icmp eq i32 %1070, %1073
  br i1 %1074, label %1075, label %1118

1075:                                             ; preds = %1067
  %1076 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %1077 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1076, i32 0, i32 6
  %1078 = load %struct.eqn_box*, %struct.eqn_box** %1077, align 8
  %1079 = icmp eq %struct.eqn_box* %1078, null
  br i1 %1079, label %1080, label %1086

1080:                                             ; preds = %1075
  %1081 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %1082 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1081, i32 0, i32 9
  %1083 = load %struct.eqn_box*, %struct.eqn_box** %1082, align 8
  %1084 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %1085 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1084, i32 0, i32 8
  store %struct.eqn_box* %1083, %struct.eqn_box** %1085, align 8
  br label %1091

1086:                                             ; preds = %1075
  %1087 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %1088 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1087, i32 0, i32 6
  %1089 = load %struct.eqn_box*, %struct.eqn_box** %1088, align 8
  %1090 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1089, i32 0, i32 9
  store %struct.eqn_box* null, %struct.eqn_box** %1090, align 8
  br label %1091

1091:                                             ; preds = %1086, %1080
  %1092 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %1093 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1092, i32 0, i32 6
  %1094 = load %struct.eqn_box*, %struct.eqn_box** %1093, align 8
  %1095 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %1096 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1095, i32 0, i32 7
  store %struct.eqn_box* %1094, %struct.eqn_box** %1096, align 8
  %1097 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %1098 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1097, i32 0, i32 3
  %1099 = load i32, i32* %1098, align 4
  %1100 = add nsw i32 %1099, -1
  store i32 %1100, i32* %1098, align 4
  %1101 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %1102 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %1103 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %1101, %struct.eqn_box* %1102)
  store %struct.eqn_box* %1103, %struct.eqn_box** %6, align 8
  %1104 = load i8*, i8** @EQN_LIST, align 8
  %1105 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %1106 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1105, i32 0, i32 0
  store i8* %1104, i8** %1106, align 8
  %1107 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %1108 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %1109 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1108, i32 0, i32 7
  store %struct.eqn_box* %1107, %struct.eqn_box** %1109, align 8
  %1110 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %1111 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1110, i32 0, i32 8
  store %struct.eqn_box* %1107, %struct.eqn_box** %1111, align 8
  %1112 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %1113 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %1114 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1113, i32 0, i32 5
  store %struct.eqn_box* %1112, %struct.eqn_box** %1114, align 8
  %1115 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %1116 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1115, i32 0, i32 6
  store %struct.eqn_box* null, %struct.eqn_box** %1116, align 8
  %1117 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  store %struct.eqn_box* %1117, %struct.eqn_box** %5, align 8
  br label %1118

1118:                                             ; preds = %1091, %1067
  %1119 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %1120 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %1121 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %1119, %struct.eqn_box* %1120)
  store %struct.eqn_box* %1121, %struct.eqn_box** %4, align 8
  %1122 = load i8*, i8** @EQN_TEXT, align 8
  %1123 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %1124 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1123, i32 0, i32 0
  store i8* %1122, i8** %1124, align 8
  %1125 = load i8*, i8** %8, align 8
  %1126 = call i8* @mandoc_strdup(i8* %1125)
  %1127 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %1128 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1127, i32 0, i32 1
  store i8* %1126, i8** %1128, align 8
  %1129 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %1130 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1129, i32 0, i32 1
  %1131 = load i8*, i8** %1130, align 8
  %1132 = load i8*, i8** %8, align 8
  %1133 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %1134 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1133, i32 0, i32 1
  %1135 = load i8*, i8** %1134, align 8
  %1136 = ptrtoint i8* %1132 to i64
  %1137 = ptrtoint i8* %1135 to i64
  %1138 = sub i64 %1136, %1137
  %1139 = inttoptr i64 %1138 to i8*
  %1140 = call i8* @mandoc_strndup(i8* %1131, i8* %1139)
  store i8* %1140, i8** %9, align 8
  %1141 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %1142 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1141, i32 0, i32 1
  %1143 = load i8*, i8** %1142, align 8
  %1144 = call i32 @free(i8* %1143)
  %1145 = load i8*, i8** %9, align 8
  %1146 = load %struct.eqn_box*, %struct.eqn_box** %3, align 8
  %1147 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1146, i32 0, i32 1
  store i8* %1145, i8** %1147, align 8
  %1148 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  store %struct.eqn_box* %1148, %struct.eqn_box** %3, align 8
  %1149 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %1150 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1149, i32 0, i32 1
  %1151 = load i8*, i8** %1150, align 8
  store i8* %1151, i8** %9, align 8
  %1152 = load i8*, i8** %9, align 8
  %1153 = getelementptr inbounds i8, i8* %1152, i64 -1
  store i8* %1153, i8** %8, align 8
  store i32 0, i32* %12, align 4
  br label %987

1154:                                             ; preds = %1051
  %1155 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %1156 = icmp ne %struct.eqn_box* %1155, null
  br i1 %1156, label %1157, label %1161

1157:                                             ; preds = %1154
  %1158 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %1159 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %1158, i32 0, i32 5
  %1160 = load %struct.eqn_box*, %struct.eqn_box** %1159, align 8
  store %struct.eqn_box* %1160, %struct.eqn_box** %5, align 8
  br label %1161

1161:                                             ; preds = %1157, %1154
  br label %1162

1162:                                             ; preds = %1161, %983, %971, %970, %956
  br label %1165

1163:                                             ; preds = %42
  %1164 = call i32 (...) @abort() #3
  unreachable

1165:                                             ; preds = %1162, %915, %895, %877, %848, %834, %766, %744, %643, %616, %576, %508, %494, %465, %450, %325, %308, %287, %259, %253, %211, %184, %104, %103, %77, %76, %50, %47
  br label %42

1166:                                             ; preds = %924, %27
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @eqn_next(%struct.eqn_node*, i32) #1

declare dso_local i32 @eqn_undef(%struct.eqn_node*) #1

declare dso_local i32 @eqn_def(%struct.eqn_node*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @eqn_delim(%struct.eqn_node*) #1

declare dso_local %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node*, %struct.eqn_box*) #1

declare dso_local i8* @mandoc_strdup(i8*) #1

declare dso_local %struct.eqn_box* @eqn_box_makebinary(%struct.eqn_node*, %struct.eqn_box*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mandoc_strntoi(i8*, i8*, i32) #1

declare dso_local i32 @STRNEQ(i8*, i8*, i8*, i32) #1

declare dso_local i8* @mandoc_strndup(i8*, i8*) #1

declare dso_local i32 @isalpha(i8 zeroext) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @mandoc_escape(i8**, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
