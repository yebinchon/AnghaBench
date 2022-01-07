; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_process64ex_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_process64ex_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"process_ex\00", align 1
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
@.str.10 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i8*, i32)* @print_process64ex_tok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_process64ex_tok(i32* %0, %struct.TYPE_9__* %1, i8* %2, i32 %3) #0 {
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
  %14 = call i32 @print_tok_type(i32* %9, i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @AU_OFLAG_XML, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %133

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
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @print_8_bytes(i32* %104, i32 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @print_ip_ex_address(i32* %112, i32 %118, i32 %124)
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @close_attr(i32* %126)
  %128 = load i32*, i32** %5, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @close_tag(i32* %128, i32 %131)
  br label %237

133:                                              ; preds = %4
  %134 = load i32*, i32** %5, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @print_delim(i32* %134, i8* %135)
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @print_user(i32* %137, i32 %142, i32 %143)
  %145 = load i32*, i32** %5, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 @print_delim(i32* %145, i8* %146)
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @print_user(i32* %148, i32 %153, i32 %154)
  %156 = load i32*, i32** %5, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 @print_delim(i32* %156, i8* %157)
  %159 = load i32*, i32** %5, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @print_group(i32* %159, i32 %164, i32 %165)
  %167 = load i32*, i32** %5, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = call i32 @print_delim(i32* %167, i8* %168)
  %170 = load i32*, i32** %5, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @print_user(i32* %170, i32 %175, i32 %176)
  %178 = load i32*, i32** %5, align 8
  %179 = load i8*, i8** %7, align 8
  %180 = call i32 @print_delim(i32* %178, i8* %179)
  %181 = load i32*, i32** %5, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @print_group(i32* %181, i32 %186, i32 %187)
  %189 = load i32*, i32** %5, align 8
  %190 = load i8*, i8** %7, align 8
  %191 = call i32 @print_delim(i32* %189, i8* %190)
  %192 = load i32*, i32** %5, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @print_4_bytes(i32* %192, i32 %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %199 = load i32*, i32** %5, align 8
  %200 = load i8*, i8** %7, align 8
  %201 = call i32 @print_delim(i32* %199, i8* %200)
  %202 = load i32*, i32** %5, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @print_4_bytes(i32* %202, i32 %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %209 = load i32*, i32** %5, align 8
  %210 = load i8*, i8** %7, align 8
  %211 = call i32 @print_delim(i32* %209, i8* %210)
  %212 = load i32*, i32** %5, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @print_8_bytes(i32* %212, i32 %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %220 = load i32*, i32** %5, align 8
  %221 = load i8*, i8** %7, align 8
  %222 = call i32 @print_delim(i32* %220, i8* %221)
  %223 = load i32*, i32** %5, align 8
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @print_ip_ex_address(i32* %223, i32 %229, i32 %235)
  br label %237

237:                                              ; preds = %133, %19
  ret void
}

declare dso_local i32 @print_tok_type(i32*, i32, i8*, i32) #1

declare dso_local i32 @open_attr(i32*, i8*) #1

declare dso_local i32 @print_user(i32*, i32, i32) #1

declare dso_local i32 @close_attr(i32*) #1

declare dso_local i32 @print_group(i32*, i32, i32) #1

declare dso_local i32 @print_4_bytes(i32*, i32, i8*) #1

declare dso_local i32 @print_8_bytes(i32*, i32, i8*) #1

declare dso_local i32 @print_ip_ex_address(i32*, i32, i32) #1

declare dso_local i32 @close_tag(i32*, i32) #1

declare dso_local i32 @print_delim(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
