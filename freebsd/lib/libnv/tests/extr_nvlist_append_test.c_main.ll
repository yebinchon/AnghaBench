; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/tests/extr_nvlist_append_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/tests/extr_nvlist_append_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"1..32\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"nvl/bool\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"nvl/string\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"key1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"nvl/nvl\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"key2\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"nvl/nvl_array\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"nvl/nvl_new_array\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = call i32* @nvlist_create(i32 0)
  store i32* %12, i32** %5, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %23, %0
  %14 = load i32, i32* %9, align 4
  %15 = icmp ult i32 %14, 16
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = urem i32 %18, 2
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @nvlist_append_bool_array(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %13

26:                                               ; preds = %13
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @nvlist_error(i32* %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @CHECK(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @nvlist_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @CHECK(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @nvlist_exists_bool_array(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @CHECK(i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32* @nvlist_get_bool_array(i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64* %10)
  store i32* %42, i32** %2, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %43, 16
  %45 = zext i1 %44 to i32
  %46 = call i32 @CHECK(i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @CHECK(i32 %49)
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %69, %26
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* %10, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = urem i32 %62, 2
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = icmp eq i32 %61, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @CHECK(i32 %67)
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @nvlist_append_string_array(i32* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @nvlist_append_string_array(i32* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32*, i32** %5, align 8
  %78 = call i8** @nvlist_get_string_array(i32* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64* %10)
  store i8** %78, i8*** %3, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp eq i64 %79, 2
  %81 = zext i1 %80 to i32
  %82 = call i32 @CHECK(i32 %81)
  %83 = load i8**, i8*** %3, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @CHECK(i32 %88)
  %90 = load i8**, i8*** %3, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @CHECK(i32 %95)
  %97 = call i32* @nvlist_create(i32 0)
  store i32* %97, i32** %6, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @nvlist_add_string(i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @nvlist_append_nvlist_array(i32* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @nvlist_destroy(i32* %103)
  %105 = call i32* @nvlist_create(i32 0)
  store i32* %105, i32** %7, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @nvlist_add_string(i32* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %108 = load i32*, i32** %5, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @nvlist_append_nvlist_array(i32* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %109)
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @nvlist_destroy(i32* %111)
  %113 = load i32*, i32** %5, align 8
  %114 = call i32** @nvlist_get_nvlist_array(i32* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64* %10)
  store i32** %114, i32*** %4, align 8
  %115 = load i64, i64* %10, align 8
  %116 = icmp eq i64 %115, 2
  %117 = zext i1 %116 to i32
  %118 = call i32 @CHECK(i32 %117)
  %119 = load i32**, i32*** %4, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i8* @nvlist_get_string(i32* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @CHECK(i32 %125)
  %127 = load i32**, i32*** %4, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i8* @nvlist_get_string(i32* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @CHECK(i32 %133)
  %135 = call i32* @nvlist_create(i32 0)
  store i32* %135, i32** %6, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @nvlist_add_number(i32* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 10)
  %138 = load i32*, i32** %5, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @nvlist_append_nvlist_array(i32* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32* %139)
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @nvlist_destroy(i32* %141)
  %143 = call i32* @nvlist_create(i32 0)
  store i32* %143, i32** %7, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 @nvlist_add_number(i32* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 20)
  %146 = load i32*, i32** %5, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @nvlist_append_nvlist_array(i32* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32* %147)
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @nvlist_destroy(i32* %149)
  %151 = load i32*, i32** %5, align 8
  %152 = call i32** @nvlist_take_nvlist_array(i32* %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64* %10)
  store i32** %152, i32*** %8, align 8
  %153 = load i32**, i32*** %8, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 0
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @nvlist_get_number(i32* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %157 = icmp eq i32 %156, 10
  %158 = zext i1 %157 to i32
  %159 = call i32 @CHECK(i32 %158)
  %160 = load i32**, i32*** %8, align 8
  %161 = getelementptr inbounds i32*, i32** %160, i64 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @nvlist_get_number(i32* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %164 = icmp eq i32 %163, 20
  %165 = zext i1 %164 to i32
  %166 = call i32 @CHECK(i32 %165)
  %167 = load i32**, i32*** %8, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 0
  %169 = load i32*, i32** %168, align 8
  %170 = call i64 @nvlist_error(i32* %169)
  %171 = icmp eq i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @CHECK(i32 %172)
  %174 = load i32**, i32*** %8, align 8
  %175 = getelementptr inbounds i32*, i32** %174, i64 1
  %176 = load i32*, i32** %175, align 8
  %177 = call i64 @nvlist_error(i32* %176)
  %178 = icmp eq i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @CHECK(i32 %179)
  %181 = load i32*, i32** %5, align 8
  %182 = load i32**, i32*** %8, align 8
  %183 = load i64, i64* %10, align 8
  %184 = call i32 @nvlist_move_nvlist_array(i32* %181, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32** %182, i64 %183)
  %185 = load i32*, i32** %5, align 8
  %186 = call i64 @nvlist_error(i32* %185)
  %187 = icmp eq i64 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @CHECK(i32 %188)
  %190 = load i32*, i32** %5, align 8
  %191 = call i32 @nvlist_destroy(i32* %190)
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_append_bool_array(i32*, i8*, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @nvlist_error(i32*) #1

declare dso_local i32 @nvlist_empty(i32*) #1

declare dso_local i32 @nvlist_exists_bool_array(i32*, i8*) #1

declare dso_local i32* @nvlist_get_bool_array(i32*, i8*, i64*) #1

declare dso_local i32 @nvlist_append_string_array(i32*, i8*, i8*) #1

declare dso_local i8** @nvlist_get_string_array(i32*, i8*, i64*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_append_nvlist_array(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32** @nvlist_get_nvlist_array(i32*, i8*, i64*) #1

declare dso_local i8* @nvlist_get_string(i32*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32** @nvlist_take_nvlist_array(i32*, i8*, i64*) #1

declare dso_local i32 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @nvlist_move_nvlist_array(i32*, i8*, i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
