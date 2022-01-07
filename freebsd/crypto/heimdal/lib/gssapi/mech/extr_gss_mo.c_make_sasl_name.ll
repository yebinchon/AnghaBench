; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_mo.c_make_sasl_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_gss_mo.c_make_sasl_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@GSS_S_BAD_MECH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"GS2-\00", align 1
@basis_32 = common dso_local global i8** null, align 8
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i8*)* @make_sasl_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_sasl_name(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca [20 x i32], align 16
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %9, align 8
  %14 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  store i32* %14, i32** %12, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 127
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @GSS_S_BAD_MECH, align 4
  store i32 %20, i32* %4, align 4
  br label %205

21:                                               ; preds = %3
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 6, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 (...) @EVP_sha1()
  %30 = call i32 @EVP_DigestInit_ex(i32* %28, i32 %29, i32* null)
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %33 = call i32 @EVP_DigestUpdate(i32* %31, i32* %32, i32 2)
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @EVP_DigestUpdate(i32* %34, i32* %37, i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %44 = call i32 @EVP_DigestFinal_ex(i32* %42, i32* %43, i32* null)
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @memcpy(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  store i8* %48, i8** %9, align 8
  %49 = load i8**, i8*** @basis_32, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %49, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %56 to i8
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %9, align 8
  store i8 %57, i8* %58, align 1
  %60 = load i8**, i8*** @basis_32, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 7
  %65 = shl i32 %64, 2
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 6
  %70 = or i32 %65, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %60, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %73 to i8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %9, align 8
  store i8 %74, i8* %75, align 1
  %77 = load i8**, i8*** @basis_32, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 63
  %82 = ashr i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %77, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %85 to i8
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %9, align 8
  store i8 %86, i8* %87, align 1
  %89 = load i8**, i8*** @basis_32, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 1
  %94 = shl i32 %93, 4
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 4
  %99 = or i32 %94, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %89, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = ptrtoint i8* %102 to i8
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i8**, i8*** @basis_32, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 15
  %111 = shl i32 %110, 1
  %112 = load i32*, i32** %12, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 7
  %116 = or i32 %111, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %106, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = ptrtoint i8* %119 to i8
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %9, align 8
  store i8 %120, i8* %121, align 1
  %123 = load i8**, i8*** @basis_32, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 127
  %128 = ashr i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %123, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = ptrtoint i8* %131 to i8
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %9, align 8
  store i8 %132, i8* %133, align 1
  %135 = load i8**, i8*** @basis_32, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 3
  %140 = shl i32 %139, 3
  %141 = load i32*, i32** %12, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 4
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 5
  %145 = or i32 %140, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %135, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = ptrtoint i8* %148 to i8
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %9, align 8
  store i8 %149, i8* %150, align 1
  %152 = load i8**, i8*** @basis_32, align 8
  %153 = load i32*, i32** %12, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 31
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %152, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = ptrtoint i8* %159 to i8
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %9, align 8
  store i8 %160, i8* %161, align 1
  %163 = load i8**, i8*** @basis_32, align 8
  %164 = load i32*, i32** %12, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 5
  %166 = load i32, i32* %165, align 4
  %167 = ashr i32 %166, 3
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %163, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = ptrtoint i8* %170 to i8
  %172 = load i8*, i8** %9, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %9, align 8
  store i8 %171, i8* %172, align 1
  %174 = load i8**, i8*** @basis_32, align 8
  %175 = load i32*, i32** %12, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 5
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 7
  %179 = shl i32 %178, 2
  %180 = load i32*, i32** %12, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 6
  %182 = load i32, i32* %181, align 4
  %183 = ashr i32 %182, 6
  %184 = or i32 %179, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %174, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = ptrtoint i8* %187 to i8
  %189 = load i8*, i8** %9, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %9, align 8
  store i8 %188, i8* %189, align 1
  %191 = load i8**, i8*** @basis_32, align 8
  %192 = load i32*, i32** %12, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 6
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 63
  %196 = ashr i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %191, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = ptrtoint i8* %199 to i8
  %201 = load i8*, i8** %9, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %9, align 8
  store i8 %200, i8* %201, align 1
  %203 = load i8*, i8** %9, align 8
  store i8 0, i8* %203, align 1
  %204 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %21, %19
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_sha1(...) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i32*, i32) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
