; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_attr64_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_attr64_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@AU_OFLAG_XML = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"fsid\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"nodeid\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i8*, i32)* @print_attr64_tok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_attr64_tok(i32* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @print_tok_type(i32* %9, i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @AU_OFLAG_XML, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %93

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @open_attr(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @print_4_bytes(i32* %22, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @close_attr(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @open_attr(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @print_user(i32* %33, i32 %38, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @close_attr(i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @open_attr(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @print_group(i32* %45, i32 %50, i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @close_attr(i32* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @open_attr(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @print_4_bytes(i32* %57, i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @close_attr(i32* %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @open_attr(i32* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @print_8_bytes(i32* %68, i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @close_attr(i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @open_attr(i32* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @print_8_bytes(i32* %79, i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @close_attr(i32* %86)
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @close_tag(i32* %88, i32 %91)
  br label %156

93:                                               ; preds = %4
  %94 = load i32*, i32** %5, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @print_delim(i32* %94, i8* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @print_4_bytes(i32* %97, i32 %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32*, i32** %5, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @print_delim(i32* %104, i8* %105)
  %107 = load i32*, i32** %5, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @print_user(i32* %107, i32 %112, i32 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @print_delim(i32* %115, i8* %116)
  %118 = load i32*, i32** %5, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @print_group(i32* %118, i32 %123, i32 %124)
  %126 = load i32*, i32** %5, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 @print_delim(i32* %126, i8* %127)
  %129 = load i32*, i32** %5, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @print_4_bytes(i32* %129, i32 %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %136 = load i32*, i32** %5, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @print_delim(i32* %136, i8* %137)
  %139 = load i32*, i32** %5, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @print_8_bytes(i32* %139, i32 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %146 = load i32*, i32** %5, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 @print_delim(i32* %146, i8* %147)
  %149 = load i32*, i32** %5, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @print_8_bytes(i32* %149, i32 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %156

156:                                              ; preds = %93, %19
  ret void
}

declare dso_local i32 @print_tok_type(i32*, i32, i8*, i32) #1

declare dso_local i32 @open_attr(i32*, i8*) #1

declare dso_local i32 @print_4_bytes(i32*, i32, i8*) #1

declare dso_local i32 @close_attr(i32*) #1

declare dso_local i32 @print_user(i32*, i32, i32) #1

declare dso_local i32 @print_group(i32*, i32, i32) #1

declare dso_local i32 @print_8_bytes(i32*, i32, i8*) #1

declare dso_local i32 @close_tag(i32*, i32) #1

declare dso_local i32 @print_delim(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
