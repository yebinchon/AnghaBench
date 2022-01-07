; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_header64_ex_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_header64_ex_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"header_ex\00", align 1
@AU_OFLAG_XML = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"msec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i8*, i32)* @print_header64_ex_tok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_header64_ex_tok(i32* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3) #0 {
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
  br i1 %18, label %19, label %100

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @open_attr(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @print_1_byte(i32* %22, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @close_attr(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @open_attr(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @print_event(i32* %33, i32 %38, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @close_attr(i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @open_attr(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @print_evmod(i32* %45, i32 %50, i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @close_attr(i32* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @open_attr(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @print_ip_ex_address(i32* %57, i32 %62, i32 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @close_attr(i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @open_attr(i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @print_sec64(i32* %73, i32 %78, i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @close_attr(i32* %81)
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @open_attr(i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @print_msec64(i32* %85, i32 %90, i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @close_attr(i32* %93)
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @close_tag(i32* %95, i32 %98)
  br label %180

100:                                              ; preds = %4
  %101 = load i32*, i32** %5, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @print_delim(i32* %101, i8* %102)
  %104 = load i32*, i32** %5, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @print_4_bytes(i32* %104, i32 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32*, i32** %5, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @print_delim(i32* %111, i8* %112)
  %114 = load i32*, i32** %5, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @print_1_byte(i32* %114, i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32*, i32** %5, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @print_delim(i32* %121, i8* %122)
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @print_event(i32* %124, i32 %129, i32 %130)
  %132 = load i32*, i32** %5, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @print_delim(i32* %132, i8* %133)
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @print_evmod(i32* %135, i32 %140, i32 %141)
  %143 = load i32*, i32** %5, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = call i32 @print_delim(i32* %143, i8* %144)
  %146 = load i32*, i32** %5, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @print_ip_ex_address(i32* %146, i32 %151, i32 %156)
  %158 = load i32*, i32** %5, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @print_delim(i32* %158, i8* %159)
  %161 = load i32*, i32** %5, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @print_sec64(i32* %161, i32 %166, i32 %167)
  %169 = load i32*, i32** %5, align 8
  %170 = load i8*, i8** %7, align 8
  %171 = call i32 @print_delim(i32* %169, i8* %170)
  %172 = load i32*, i32** %5, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @print_msec64(i32* %172, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %100, %19
  ret void
}

declare dso_local i32 @print_tok_type(i32*, i32, i8*, i32) #1

declare dso_local i32 @open_attr(i32*, i8*) #1

declare dso_local i32 @print_1_byte(i32*, i32, i8*) #1

declare dso_local i32 @close_attr(i32*) #1

declare dso_local i32 @print_event(i32*, i32, i32) #1

declare dso_local i32 @print_evmod(i32*, i32, i32) #1

declare dso_local i32 @print_ip_ex_address(i32*, i32, i32) #1

declare dso_local i32 @print_sec64(i32*, i32, i32) #1

declare dso_local i32 @print_msec64(i32*, i32, i32) #1

declare dso_local i32 @close_tag(i32*, i32) #1

declare dso_local i32 @print_delim(i32*, i8*) #1

declare dso_local i32 @print_4_bytes(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
