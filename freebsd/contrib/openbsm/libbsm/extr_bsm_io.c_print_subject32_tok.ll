; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_subject32_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_subject32_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@AU_OFLAG_XML = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"audit-uid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ruid\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"rgid\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sid\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tid\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i8*, i32)* @print_subject32_tok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_subject32_tok(i32* %0, %struct.TYPE_9__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @print_tok_type(i32* %9, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @AU_OFLAG_XML, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %127

19:                                               ; preds = %4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @open_attr(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @print_user(i32* %22, i32 %27, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @close_attr(i32* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @open_attr(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @print_user(i32* %34, i32 %39, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @close_attr(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @open_attr(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @print_group(i32* %46, i32 %51, i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @close_attr(i32* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @open_attr(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @print_user(i32* %58, i32 %63, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @close_attr(i32* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @open_attr(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @print_group(i32* %70, i32 %75, i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @close_attr(i32* %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @open_attr(i32* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @print_4_bytes(i32* %82, i32 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @close_attr(i32* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @open_attr(i32* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @print_4_bytes(i32* %93, i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @close_attr(i32* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @open_attr(i32* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %104 = load i32*, i32** %5, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @print_4_bytes(i32* %104, i32 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @print_ip_address(i32* %112, i32 %118)
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @close_attr(i32* %120)
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @close_tag(i32* %122, i32 %125)
  br label %225

127:                                              ; preds = %4
  %128 = load i32*, i32** %5, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @print_delim(i32* %128, i8* %129)
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @print_user(i32* %131, i32 %136, i32 %137)
  %139 = load i32*, i32** %5, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = call i32 @print_delim(i32* %139, i8* %140)
  %142 = load i32*, i32** %5, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @print_user(i32* %142, i32 %147, i32 %148)
  %150 = load i32*, i32** %5, align 8
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 @print_delim(i32* %150, i8* %151)
  %153 = load i32*, i32** %5, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @print_group(i32* %153, i32 %158, i32 %159)
  %161 = load i32*, i32** %5, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 @print_delim(i32* %161, i8* %162)
  %164 = load i32*, i32** %5, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @print_user(i32* %164, i32 %169, i32 %170)
  %172 = load i32*, i32** %5, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = call i32 @print_delim(i32* %172, i8* %173)
  %175 = load i32*, i32** %5, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @print_group(i32* %175, i32 %180, i32 %181)
  %183 = load i32*, i32** %5, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = call i32 @print_delim(i32* %183, i8* %184)
  %186 = load i32*, i32** %5, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @print_4_bytes(i32* %186, i32 %191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %193 = load i32*, i32** %5, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = call i32 @print_delim(i32* %193, i8* %194)
  %196 = load i32*, i32** %5, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @print_4_bytes(i32* %196, i32 %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %203 = load i32*, i32** %5, align 8
  %204 = load i8*, i8** %7, align 8
  %205 = call i32 @print_delim(i32* %203, i8* %204)
  %206 = load i32*, i32** %5, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @print_4_bytes(i32* %206, i32 %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %214 = load i32*, i32** %5, align 8
  %215 = load i8*, i8** %7, align 8
  %216 = call i32 @print_delim(i32* %214, i8* %215)
  %217 = load i32*, i32** %5, align 8
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @print_ip_address(i32* %217, i32 %223)
  br label %225

225:                                              ; preds = %127, %19
  ret void
}

declare dso_local i32 @print_tok_type(i32*, i32, i8*, i32) #1

declare dso_local i32 @open_attr(i32*, i8*) #1

declare dso_local i32 @print_user(i32*, i32, i32) #1

declare dso_local i32 @close_attr(i32*) #1

declare dso_local i32 @print_group(i32*, i32, i32) #1

declare dso_local i32 @print_4_bytes(i32*, i32, i8*) #1

declare dso_local i32 @print_ip_address(i32*, i32) #1

declare dso_local i32 @close_tag(i32*, i32) #1

declare dso_local i32 @print_delim(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
