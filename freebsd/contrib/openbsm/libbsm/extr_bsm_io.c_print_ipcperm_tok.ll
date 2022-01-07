; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_ipcperm_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_ipcperm_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"IPC perm\00", align 1
@AU_OFLAG_XML = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"creator-uid\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"creator-gid\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i8*, i32)* @print_ipcperm_tok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ipcperm_tok(i32* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3) #0 {
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
  %14 = call i32 @print_tok_type(i32* %9, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @AU_OFLAG_XML, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %106

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @open_attr(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @print_user(i32* %22, i32 %27, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @close_attr(i32* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @open_attr(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @print_group(i32* %34, i32 %39, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @close_attr(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @open_attr(i32* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @print_user(i32* %46, i32 %51, i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @close_attr(i32* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @open_attr(i32* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @print_group(i32* %58, i32 %63, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @close_attr(i32* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @open_attr(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @print_4_bytes(i32* %70, i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @close_attr(i32* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @open_attr(i32* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @print_4_bytes(i32* %81, i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @close_attr(i32* %88)
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @open_attr(i32* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @print_4_bytes(i32* %92, i32 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @close_attr(i32* %99)
  %101 = load i32*, i32** %5, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @close_tag(i32* %101, i32 %104)
  br label %181

106:                                              ; preds = %4
  %107 = load i32*, i32** %5, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @print_delim(i32* %107, i8* %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @print_user(i32* %110, i32 %115, i32 %116)
  %118 = load i32*, i32** %5, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @print_delim(i32* %118, i8* %119)
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @print_group(i32* %121, i32 %126, i32 %127)
  %129 = load i32*, i32** %5, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @print_delim(i32* %129, i8* %130)
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @print_user(i32* %132, i32 %137, i32 %138)
  %140 = load i32*, i32** %5, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 @print_delim(i32* %140, i8* %141)
  %143 = load i32*, i32** %5, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @print_group(i32* %143, i32 %148, i32 %149)
  %151 = load i32*, i32** %5, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @print_delim(i32* %151, i8* %152)
  %154 = load i32*, i32** %5, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @print_4_bytes(i32* %154, i32 %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %161 = load i32*, i32** %5, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 @print_delim(i32* %161, i8* %162)
  %164 = load i32*, i32** %5, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @print_4_bytes(i32* %164, i32 %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %171 = load i32*, i32** %5, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 @print_delim(i32* %171, i8* %172)
  %174 = load i32*, i32** %5, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @print_4_bytes(i32* %174, i32 %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %181

181:                                              ; preds = %106, %19
  ret void
}

declare dso_local i32 @print_tok_type(i32*, i32, i8*, i32) #1

declare dso_local i32 @open_attr(i32*, i8*) #1

declare dso_local i32 @print_user(i32*, i32, i32) #1

declare dso_local i32 @close_attr(i32*) #1

declare dso_local i32 @print_group(i32*, i32, i32) #1

declare dso_local i32 @print_4_bytes(i32*, i32, i8*) #1

declare dso_local i32 @close_tag(i32*, i32) #1

declare dso_local i32 @print_delim(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
