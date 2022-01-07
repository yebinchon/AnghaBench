; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_parse_sattr3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_parse_sattr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsv3_sattr = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@NFSV3SATTRTIME_TOCLIENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.nfsv3_sattr*)* @parse_sattr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_sattr3(i32* %0, i32* %1, %struct.nfsv3_sattr* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsv3_sattr*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsv3_sattr* %2, %struct.nfsv3_sattr** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ND_TCHECK(i32 %10)
  %12 = load i32*, i32** %6, align 8
  %13 = call i8* @EXTRACT_32BITS(i32* %12)
  %14 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %15 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %14, i32 0, i32 11
  store i8* %13, i8** %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %6, align 8
  %18 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %19 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %18, i32 0, i32 11
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ND_TCHECK(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @EXTRACT_32BITS(i32* %27)
  %29 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %30 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %29, i32 0, i32 10
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  br label %33

33:                                               ; preds = %22, %3
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ND_TCHECK(i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = call i8* @EXTRACT_32BITS(i32* %38)
  %40 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %41 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %40, i32 0, i32 9
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %6, align 8
  %44 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %45 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %44, i32 0, i32 9
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %33
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ND_TCHECK(i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = call i8* @EXTRACT_32BITS(i32* %53)
  %55 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %56 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  br label %59

59:                                               ; preds = %48, %33
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ND_TCHECK(i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call i8* @EXTRACT_32BITS(i32* %64)
  %66 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %67 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %6, align 8
  %70 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %71 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %70, i32 0, i32 7
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %59
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ND_TCHECK(i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call i8* @EXTRACT_32BITS(i32* %79)
  %81 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %82 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %6, align 8
  br label %85

85:                                               ; preds = %74, %59
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ND_TCHECK(i32 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = call i8* @EXTRACT_32BITS(i32* %90)
  %92 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %93 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %92, i32 0, i32 5
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %6, align 8
  %96 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %97 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %96, i32 0, i32 5
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %85
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ND_TCHECK(i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i8* @EXTRACT_32BITS(i32* %105)
  %107 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %108 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %6, align 8
  br label %111

111:                                              ; preds = %100, %85
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ND_TCHECK(i32 %114)
  %116 = load i32*, i32** %6, align 8
  %117 = call i8* @EXTRACT_32BITS(i32* %116)
  %118 = ptrtoint i8* %117 to i64
  %119 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %120 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %6, align 8
  %123 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %124 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @NFSV3SATTRTIME_TOCLIENT, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %111
  %129 = load i32*, i32** %6, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ND_TCHECK(i32 %131)
  %133 = load i32*, i32** %6, align 8
  %134 = call i8* @EXTRACT_32BITS(i32* %133)
  %135 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %136 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i8* %134, i8** %137, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %6, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = call i8* @EXTRACT_32BITS(i32* %140)
  %142 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %143 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i8* %141, i8** %144, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %6, align 8
  br label %147

147:                                              ; preds = %128, %111
  %148 = load i32*, i32** %6, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ND_TCHECK(i32 %150)
  %152 = load i32*, i32** %6, align 8
  %153 = call i8* @EXTRACT_32BITS(i32* %152)
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %156 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %6, align 8
  %159 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %160 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @NFSV3SATTRTIME_TOCLIENT, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %183

164:                                              ; preds = %147
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ND_TCHECK(i32 %167)
  %169 = load i32*, i32** %6, align 8
  %170 = call i8* @EXTRACT_32BITS(i32* %169)
  %171 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %172 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  store i8* %170, i8** %173, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %6, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = call i8* @EXTRACT_32BITS(i32* %176)
  %178 = load %struct.nfsv3_sattr*, %struct.nfsv3_sattr** %7, align 8
  %179 = getelementptr inbounds %struct.nfsv3_sattr, %struct.nfsv3_sattr* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  store i8* %177, i8** %180, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %6, align 8
  br label %183

183:                                              ; preds = %164, %147
  %184 = load i32*, i32** %6, align 8
  store i32* %184, i32** %4, align 8
  br label %186

185:                                              ; No predecessors!
  store i32* null, i32** %4, align 8
  br label %186

186:                                              ; preds = %185, %183
  %187 = load i32*, i32** %4, align 8
  ret i32* %187
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i8* @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
