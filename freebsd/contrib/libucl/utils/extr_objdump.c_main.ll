; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/utils/extr_objdump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/utils/extr_objdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@BUFSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to read the input file.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Error occured: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"search for \22%s\22... \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%sfound\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ucl_parser*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32* null, i32** %13, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @errno, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @exit(i32 %32) #3
  unreachable

34:                                               ; preds = %25
  br label %37

35:                                               ; preds = %22
  %36 = load i32*, i32** @stdin, align 8
  store i32* %36, i32** %15, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = call %struct.ucl_parser* @ucl_parser_new(i32 0)
  store %struct.ucl_parser* %38, %struct.ucl_parser** %8, align 8
  %39 = load i32, i32* @BUFSIZ, align 4
  %40 = call i8* @malloc(i32 %39)
  store i8* %40, i8** %7, align 8
  %41 = load i32, i32* @BUFSIZ, align 4
  store i32 %41, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %71, %37
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @feof(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %15, align 8
  %48 = call i64 @ferror(i32* %47)
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i1 [ false, %42 ], [ %50, %46 ]
  br i1 %52, label %53, label %85

53:                                               ; preds = %51
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = mul nsw i32 %59, 2
  %61 = call i8* @realloc(i8* %58, i32 %60)
  store i8* %61, i8** %7, align 8
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %12, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EXIT_FAILURE, align 4
  %69 = call i32 @exit(i32 %68) #3
  unreachable

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %53
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32*, i32** %15, align 8
  %80 = call i64 @fread(i8* %75, i32 1, i32 %78, i32* %79)
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %11, align 4
  br label %42

85:                                               ; preds = %51
  %86 = load i32*, i32** %15, align 8
  %87 = call i64 @ferror(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 @fprintf(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EXIT_FAILURE, align 4
  %93 = call i32 @exit(i32 %92) #3
  unreachable

94:                                               ; preds = %85
  %95 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @ucl_parser_add_chunk(%struct.ucl_parser* %95, i8* %96, i32 %97)
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @fclose(i32* %99)
  %101 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %102 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %101)
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %106 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %105)
  %107 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %106)
  store i32 1, i32* %10, align 4
  br label %155

108:                                              ; preds = %94
  %109 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %110 = call i32* @ucl_parser_get_object(%struct.ucl_parser* %109)
  store i32* %110, i32** %13, align 8
  %111 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %112 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %111)
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %116 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %115)
  %117 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %116)
  store i32 1, i32* %10, align 4
  br label %155

118:                                              ; preds = %108
  %119 = load i32, i32* %4, align 4
  %120 = icmp sgt i32 %119, 2
  br i1 %120, label %121, label %151

121:                                              ; preds = %118
  store i32 2, i32* %9, align 4
  br label %122

122:                                              ; preds = %147, %121
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %122
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %131)
  %133 = load i32*, i32** %13, align 8
  %134 = load i8**, i8*** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32* @ucl_object_lookup(i32* %133, i8* %138)
  store i32* %139, i32** %14, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = icmp eq i32* %140, null
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %144 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %143)
  %145 = load i32*, i32** %14, align 8
  %146 = call i32 @ucl_obj_dump(i32* %145, i32 0)
  br label %147

147:                                              ; preds = %126
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %122

150:                                              ; preds = %122
  br label %154

151:                                              ; preds = %118
  %152 = load i32*, i32** %13, align 8
  %153 = call i32 @ucl_obj_dump(i32* %152, i32 0)
  br label %154

154:                                              ; preds = %151, %150
  br label %155

155:                                              ; preds = %154, %114, %104
  %156 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %157 = icmp ne %struct.ucl_parser* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %160 = call i32 @ucl_parser_free(%struct.ucl_parser* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32*, i32** %13, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32*, i32** %13, align 8
  %166 = call i32 @ucl_object_unref(i32* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* %10, align 4
  ret i32 %168
}

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.ucl_parser* @ucl_parser_new(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @ucl_parser_add_chunk(%struct.ucl_parser*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @ucl_parser_get_error(%struct.ucl_parser*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32* @ucl_parser_get_object(%struct.ucl_parser*) #1

declare dso_local i32* @ucl_object_lookup(i32*, i8*) #1

declare dso_local i32 @ucl_obj_dump(i32*, i32) #1

declare dso_local i32 @ucl_parser_free(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
