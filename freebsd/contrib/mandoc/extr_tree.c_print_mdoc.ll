; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tree.c_print_mdoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tree.c_print_mdoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32, i8*, i64, i32, i32, i32, %struct.roff_node*, %struct.roff_node*, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, %struct.mdoc_argv* }
%struct.mdoc_argv = type { i64, i64, i8** }

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"body-end\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"elem\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"eqn\00", align 1
@roff_name = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"EQ\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" -%s\00", align 1
@mdoc_argnames = common dso_local global i8** null, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@NODE_DELIMO = common dso_local global i32 0, align 4
@NODE_LINE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@NODE_DELIMC = common dso_local global i32 0, align 4
@NODE_EOS = common dso_local global i32 0, align 4
@NODE_BROKEN = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c" BROKEN\00", align 1
@NODE_NOFILL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c" NOFILL\00", align 1
@NODE_NOSRC = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c" NOSRC\00", align 1
@NODE_NOPRT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c" NOPRT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_node*, i32)* @print_mdoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_mdoc(%struct.roff_node* %0, i32 %1) #0 {
  %3 = alloca %struct.roff_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mdoc_argv*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %12 = icmp eq %struct.roff_node* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %340

14:                                               ; preds = %2
  store %struct.mdoc_argv* null, %struct.mdoc_argv** %10, align 8
  store i64 0, i64* %9, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %15 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %16 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %35 [
    i32 131, label %18
    i32 137, label %19
    i32 132, label %20
    i32 136, label %21
    i32 130, label %29
    i32 134, label %30
    i32 128, label %31
    i32 135, label %32
    i32 129, label %33
    i32 133, label %34
  ]

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %37

19:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %37

20:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %37

21:                                               ; preds = %14
  %22 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %23 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %28

27:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %28

28:                                               ; preds = %27, %26
  br label %37

29:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %37

30:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %37

31:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %37

32:                                               ; preds = %14
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %37

33:                                               ; preds = %14
  br label %37

34:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %37

35:                                               ; preds = %14
  %36 = call i32 (...) @abort() #3
  unreachable

37:                                               ; preds = %34, %33, %32, %31, %30, %29, %28, %20, %19, %18
  %38 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %39 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %115 [
    i32 128, label %41
    i32 135, label %41
    i32 136, label %45
    i32 132, label %52
    i32 130, label %59
    i32 134, label %66
    i32 137, label %89
    i32 129, label %112
    i32 133, label %113
    i32 131, label %114
  ]

41:                                               ; preds = %37, %37
  %42 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %43 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %5, align 8
  br label %117

45:                                               ; preds = %37
  %46 = load i8**, i8*** @roff_name, align 8
  %47 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %48 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %5, align 8
  br label %117

52:                                               ; preds = %37
  %53 = load i8**, i8*** @roff_name, align 8
  %54 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %55 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %5, align 8
  br label %117

59:                                               ; preds = %37
  %60 = load i8**, i8*** @roff_name, align 8
  %61 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %62 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %5, align 8
  br label %117

66:                                               ; preds = %37
  %67 = load i8**, i8*** @roff_name, align 8
  %68 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %69 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %5, align 8
  %73 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %74 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %73, i32 0, i32 10
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = icmp ne %struct.TYPE_3__* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %66
  %78 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %79 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %78, i32 0, i32 10
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load %struct.mdoc_argv*, %struct.mdoc_argv** %81, align 8
  store %struct.mdoc_argv* %82, %struct.mdoc_argv** %10, align 8
  %83 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %84 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %83, i32 0, i32 10
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %77, %66
  br label %117

89:                                               ; preds = %37
  %90 = load i8**, i8*** @roff_name, align 8
  %91 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %92 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %5, align 8
  %96 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %97 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %96, i32 0, i32 10
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = icmp ne %struct.TYPE_3__* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %89
  %101 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %102 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %101, i32 0, i32 10
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load %struct.mdoc_argv*, %struct.mdoc_argv** %104, align 8
  store %struct.mdoc_argv* %105, %struct.mdoc_argv** %10, align 8
  %106 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %107 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %106, i32 0, i32 10
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %9, align 8
  br label %111

111:                                              ; preds = %100, %89
  br label %117

112:                                              ; preds = %37
  br label %117

113:                                              ; preds = %37
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %117

114:                                              ; preds = %37
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %117

115:                                              ; preds = %37
  %116 = call i32 (...) @abort() #3
  unreachable

117:                                              ; preds = %114, %113, %112, %111, %88, %59, %52, %45, %41
  %118 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %119 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %118, i32 0, i32 9
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = load i8*, i8** %5, align 8
  %124 = icmp eq i8* null, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i8*, i8** %6, align 8
  %127 = icmp eq i8* null, %126
  br label %128

128:                                              ; preds = %125, %122
  %129 = phi i1 [ false, %122 ], [ %127, %125 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %133 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %132, i32 0, i32 9
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @print_span(i64 %134, i32 %135)
  br label %299

137:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %144, %137
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = call i32 @putchar(i8 signext 32)
  br label %144

144:                                              ; preds = %142
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %138

147:                                              ; preds = %138
  %148 = load i8*, i8** %5, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %148, i8* %149)
  store i32 0, i32* %7, align 4
  br label %151

151:                                              ; preds = %213, %147
  %152 = load i32, i32* %7, align 4
  %153 = load i64, i64* %9, align 8
  %154 = trunc i64 %153 to i32
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %216

156:                                              ; preds = %151
  %157 = load i8**, i8*** @mdoc_argnames, align 8
  %158 = load %struct.mdoc_argv*, %struct.mdoc_argv** %10, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %158, i64 %160
  %162 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i8*, i8** %157, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %165)
  %167 = load %struct.mdoc_argv*, %struct.mdoc_argv** %10, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %167, i64 %169
  %171 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %156
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %156
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %199, %176
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.mdoc_argv*, %struct.mdoc_argv** %10, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %179, i64 %181
  %183 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = icmp slt i32 %178, %185
  br i1 %186, label %187, label %202

187:                                              ; preds = %177
  %188 = load %struct.mdoc_argv*, %struct.mdoc_argv** %10, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %188, i64 %190
  %192 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %191, i32 0, i32 2
  %193 = load i8**, i8*** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %187
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %177

202:                                              ; preds = %177
  %203 = load %struct.mdoc_argv*, %struct.mdoc_argv** %10, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %203, i64 %205
  %207 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %202
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %202
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %151

216:                                              ; preds = %151
  %217 = call i32 @putchar(i8 signext 32)
  %218 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %219 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @NODE_DELIMO, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = call i32 @putchar(i8 signext 40)
  br label %226

226:                                              ; preds = %224, %216
  %227 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %228 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @NODE_LINE, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = call i32 @putchar(i8 signext 42)
  br label %235

235:                                              ; preds = %233, %226
  %236 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %237 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %240 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %238, i32 %242)
  %244 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %245 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @NODE_DELIMC, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %235
  %251 = call i32 @putchar(i8 signext 41)
  br label %252

252:                                              ; preds = %250, %235
  %253 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %254 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @NODE_EOS, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = call i32 @putchar(i8 signext 46)
  br label %261

261:                                              ; preds = %259, %252
  %262 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %263 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @NODE_BROKEN, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %261
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %270

270:                                              ; preds = %268, %261
  %271 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %272 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @NODE_NOFILL, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %270
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  br label %279

279:                                              ; preds = %277, %270
  %280 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %281 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @NODE_NOSRC, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %279
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  br label %288

288:                                              ; preds = %286, %279
  %289 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %290 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @NODE_NOPRT, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %288
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  br label %297

297:                                              ; preds = %295, %288
  %298 = call i32 @putchar(i8 signext 10)
  br label %299

299:                                              ; preds = %297, %128
  %300 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %301 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %300, i32 0, i32 8
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %301, align 8
  %303 = icmp ne %struct.TYPE_4__* %302, null
  br i1 %303, label %304, label %313

304:                                              ; preds = %299
  %305 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %306 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %305, i32 0, i32 8
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %4, align 4
  %311 = add nsw i32 %310, 4
  %312 = call i32 @print_box(i32 %309, i32 %311)
  br label %313

313:                                              ; preds = %304, %299
  %314 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %315 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %314, i32 0, i32 7
  %316 = load %struct.roff_node*, %struct.roff_node** %315, align 8
  %317 = icmp ne %struct.roff_node* %316, null
  br i1 %317, label %318, label %330

318:                                              ; preds = %313
  %319 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %320 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %319, i32 0, i32 7
  %321 = load %struct.roff_node*, %struct.roff_node** %320, align 8
  %322 = load i32, i32* %4, align 4
  %323 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %324 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp eq i32 %325, 137
  %327 = zext i1 %326 to i64
  %328 = select i1 %326, i32 2, i32 4
  %329 = add nsw i32 %322, %328
  call void @print_mdoc(%struct.roff_node* %321, i32 %329)
  br label %330

330:                                              ; preds = %318, %313
  %331 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %332 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %331, i32 0, i32 6
  %333 = load %struct.roff_node*, %struct.roff_node** %332, align 8
  %334 = icmp ne %struct.roff_node* %333, null
  br i1 %334, label %335, label %340

335:                                              ; preds = %330
  %336 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %337 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %336, i32 0, i32 6
  %338 = load %struct.roff_node*, %struct.roff_node** %337, align 8
  %339 = load i32, i32* %4, align 4
  call void @print_mdoc(%struct.roff_node* %338, i32 %339)
  br label %340

340:                                              ; preds = %13, %335, %330
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @print_span(i64, i32) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @print_box(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
