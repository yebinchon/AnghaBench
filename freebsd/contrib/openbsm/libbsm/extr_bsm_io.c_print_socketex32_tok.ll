; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_socketex32_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_socketex32_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@AU_OFLAG_XML = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"sock_dom\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%#x\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"sock_type\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"lport\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"laddr\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"faddr\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"fport\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i8*, i32)* @print_socketex32_tok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_socketex32_tok(i32* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3) #0 {
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
  %14 = call i32 @print_tok_type(i32* %9, i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @AU_OFLAG_XML, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %103

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @open_attr(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @print_2_bytes(i32* %22, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @close_attr(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @open_attr(i32* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @print_2_bytes(i32* %33, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @close_attr(i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @open_attr(i32* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = call i32 @print_2_bytes(i32* %44, i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @close_attr(i32* %52)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @open_attr(i32* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @print_ip_ex_address(i32* %56, i32 %61, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @close_attr(i32* %68)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @open_attr(i32* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @print_ip_ex_address(i32* %72, i32 %77, i32 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @close_attr(i32* %84)
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @open_attr(i32* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ntohs(i32 %93)
  %95 = call i32 @print_2_bytes(i32* %88, i32 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @close_attr(i32* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @close_tag(i32* %98, i32 %101)
  br label %176

103:                                              ; preds = %4
  %104 = load i32*, i32** %5, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @print_delim(i32* %104, i8* %105)
  %107 = load i32*, i32** %5, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @print_2_bytes(i32* %107, i32 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32*, i32** %5, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @print_delim(i32* %114, i8* %115)
  %117 = load i32*, i32** %5, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @print_2_bytes(i32* %117, i32 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32*, i32** %5, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @print_delim(i32* %124, i8* %125)
  %127 = load i32*, i32** %5, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ntohs(i32 %132)
  %134 = call i32 @print_2_bytes(i32* %127, i32 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32*, i32** %5, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 @print_delim(i32* %135, i8* %136)
  %138 = load i32*, i32** %5, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @print_ip_ex_address(i32* %138, i32 %143, i32 %148)
  %150 = load i32*, i32** %5, align 8
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 @print_delim(i32* %150, i8* %151)
  %153 = load i32*, i32** %5, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ntohs(i32 %158)
  %160 = call i32 @print_4_bytes(i32* %153, i32 %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i32*, i32** %5, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 @print_delim(i32* %161, i8* %162)
  %164 = load i32*, i32** %5, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @print_ip_ex_address(i32* %164, i32 %169, i32 %174)
  br label %176

176:                                              ; preds = %103, %19
  ret void
}

declare dso_local i32 @print_tok_type(i32*, i32, i8*, i32) #1

declare dso_local i32 @open_attr(i32*, i8*) #1

declare dso_local i32 @print_2_bytes(i32*, i32, i8*) #1

declare dso_local i32 @close_attr(i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @print_ip_ex_address(i32*, i32, i32) #1

declare dso_local i32 @close_tag(i32*, i32) #1

declare dso_local i32 @print_delim(i32*, i8*) #1

declare dso_local i32 @print_4_bytes(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
