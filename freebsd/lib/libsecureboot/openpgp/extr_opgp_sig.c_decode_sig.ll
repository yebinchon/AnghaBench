; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_opgp_sig.c_decode_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_opgp_sig.c_decode_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_sig(i32 %0, i8** %1, i64 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i8**, i8*** %7, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %10, align 8
  %23 = load i8, i8* %21, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %72

27:                                               ; preds = %4
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %10, align 8
  %30 = call i8* @malloc(i32 5)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %199

38:                                               ; preds = %27
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @memcpy(i8* %41, i8* %42, i32 5)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 5, i32* %45, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  %48 = load i8, i8* %46, align 1
  %49 = zext i8 %48 to i32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i8* @octets2hex(i8* %54, i32 8)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 8
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %10, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  br label %183

72:                                               ; preds = %4
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %75, label %181

75:                                               ; preds = %72
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %10, align 8
  %78 = load i8, i8* %76, align 1
  %79 = zext i8 %78 to i32
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %10, align 8
  %84 = load i8, i8* %82, align 1
  %85 = zext i8 %84 to i32
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %10, align 8
  %90 = load i8, i8* %88, align 1
  %91 = zext i8 %90 to i32
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @octets2i(i8* %94, i32 2)
  store i32 %95, i32* %14, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  store i8* %97, i8** %10, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, 6
  %101 = trunc i64 %100 to i32
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 6
  %108 = call i8* @malloc(i32 %107)
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %75
  store i32 -1, i32* %5, align 4
  br label %199

116:                                              ; preds = %75
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @memcpy(i8* %119, i8* %120, i32 %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %127, i64 %131
  store i8* %132, i8** %12, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %12, align 8
  store i8 4, i8* %133, align 1
  %135 = load i8*, i8** %12, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %12, align 8
  store i8 -1, i8* %135, align 1
  %137 = load i8*, i8** %12, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @i2octets(i32 4, i32 %140)
  %142 = call i32 @memcpy(i8* %137, i8* %141, i32 4)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 6
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %150, %116
  %148 = load i32, i32* %14, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = call i8* @decode_subpacket(i8** %10, i32* %16, i32* %17)
  store i8* %151, i8** %12, align 8
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %14, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %14, align 4
  br label %147

155:                                              ; preds = %147
  %156 = load i8*, i8** %10, align 8
  %157 = call i32 @octets2i(i8* %156, i32 2)
  store i32 %157, i32* %15, align 4
  %158 = load i8*, i8** %10, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  store i8* %159, i8** %10, align 8
  br label %160

160:                                              ; preds = %179, %155
  %161 = load i32, i32* %15, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %160
  %164 = call i8* @decode_subpacket(i8** %10, i32* %16, i32* %17)
  store i8* %164, i8** %12, align 8
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %15, align 4
  %167 = sub nsw i32 %166, %165
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp eq i32 %168, 16
  br i1 %169, label %170, label %179

170:                                              ; preds = %163
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 5
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @free(i8* %173)
  %175 = load i8*, i8** %12, align 8
  %176 = call i8* @octets2hex(i8* %175, i32 8)
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 5
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %170, %163
  br label %160

180:                                              ; preds = %160
  br label %182

181:                                              ; preds = %72
  store i32 -1, i32* %5, align 4
  br label %199

182:                                              ; preds = %180
  br label %183

183:                                              ; preds = %182, %38
  %184 = load i8*, i8** %10, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 2
  store i8* %185, i8** %10, align 8
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 3
  %193 = call i32 @decode_mpi(i8** %10, i32* %192)
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 4
  br label %196

196:                                              ; preds = %190, %183
  %197 = load i64, i64* %8, align 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %196, %181, %115, %37
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @octets2hex(i8*, i32) #1

declare dso_local i32 @octets2i(i8*, i32) #1

declare dso_local i8* @i2octets(i32, i32) #1

declare dso_local i8* @decode_subpacket(i8**, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @decode_mpi(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
