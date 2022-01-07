; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_uuid_from_string.c_uuid_from_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_uuid_from_string.c_uuid_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8**, i8*, i8*, i8*, i8* }

@uuid_s_invalid_string_uuid = common dso_local global i32 0, align 4
@uuid_s_bad_version = common dso_local global i32 0, align 4
@uuid_s_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uuid_from_string(i8* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11, %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @uuid_create_nil(%struct.TYPE_4__* %17, i32* %18)
  br label %156

20:                                               ; preds = %11
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @uuid_s_invalid_string_uuid, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = icmp ne i32 %28, 36
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %156

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 45
  br i1 %36, label %55, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 13
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 45
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 18
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 45
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 23
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 45
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %43, %37, %31
  br label %156

56:                                               ; preds = %49
  %57 = load i8*, i8** %4, align 8
  %58 = call i8* @fromhex(i8* %57, i32 8, i32* %7)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 9
  %63 = call i8* @fromhex(i8* %62, i32 4, i32* %7)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 14
  %68 = call i8* @fromhex(i8* %67, i32 4, i32* %7)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 19
  %73 = call i8* @fromhex(i8* %72, i32 2, i32* %7)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 21
  %79 = call i8* @fromhex(i8* %78, i32 2, i32* %7)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 24
  %84 = call i8* @fromhex(i8* %83, i32 2, i32* %7)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  store i8* %84, i8** %88, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 26
  %91 = call i8* @fromhex(i8* %90, i32 2, i32* %7)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  store i8* %91, i8** %95, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 28
  %98 = call i8* @fromhex(i8* %97, i32 2, i32* %7)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 2
  store i8* %98, i8** %102, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 30
  %105 = call i8* @fromhex(i8* %104, i32 2, i32* %7)
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 3
  store i8* %105, i8** %109, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 32
  %112 = call i8* @fromhex(i8* %111, i32 2, i32* %7)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 4
  store i8* %112, i8** %116, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 34
  %119 = call i8* @fromhex(i8* %118, i32 2, i32* %7)
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 5
  store i8* %119, i8** %123, align 8
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %56
  br label %156

127:                                              ; preds = %56
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = and i32 %131, 128
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %127
  %135 = load i32, i32* %8, align 4
  %136 = and i32 %135, 192
  %137 = icmp ne i32 %136, 128
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, 224
  %141 = icmp ne i32 %140, 192
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = load i32*, i32** %6, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* @uuid_s_bad_version, align 4
  %147 = load i32*, i32** %6, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %145, %142
  br label %156

149:                                              ; preds = %138, %134, %127
  %150 = load i32*, i32** %6, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* @uuid_s_ok, align 4
  %154 = load i32*, i32** %6, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %149
  br label %156

156:                                              ; preds = %16, %30, %55, %126, %155, %148
  ret void
}

declare dso_local i32 @uuid_create_nil(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @fromhex(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
