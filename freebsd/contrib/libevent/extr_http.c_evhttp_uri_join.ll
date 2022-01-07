; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_uri_join.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_uri_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_uri = type { i8*, i64, i64, i32, i32, i64, i64 }
%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s@\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@fragment = common dso_local global i32 0, align 4
@host = common dso_local global i32 0, align 4
@path = common dso_local global i32 0, align 4
@query = common dso_local global i32 0, align 4
@scheme = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @evhttp_uri_join(%struct.evhttp_uri* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evhttp_uri*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.evbuffer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.evhttp_uri* %0, %struct.evhttp_uri** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.evbuffer* null, %struct.evbuffer** %8, align 8
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %11 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %12 = icmp ne %struct.evhttp_uri* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %3
  store i8* null, i8** %4, align 8
  br label %186

20:                                               ; preds = %16
  %21 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %21, %struct.evbuffer** %8, align 8
  %22 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %23 = icmp ne %struct.evbuffer* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i8* null, i8** %4, align 8
  br label %186

25:                                               ; preds = %20
  %26 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %27 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %32 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %33 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %37 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i64 @strlen(i8* %39)
  %41 = trunc i64 %40 to i32
  %42 = call i32 @evbuffer_add(%struct.evbuffer* %31, i8* %35, i32 %41)
  %43 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %44 = call i32 @evbuffer_add(%struct.evbuffer* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %45

45:                                               ; preds = %30, %25
  %46 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %47 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %109

50:                                               ; preds = %45
  %51 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %52 = call i32 @evbuffer_add(%struct.evbuffer* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %53 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %54 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %59 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %60 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @evbuffer_add_printf(%struct.evbuffer* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %65 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %66 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %70 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = call i64 @strlen(i8* %72)
  %74 = trunc i64 %73 to i32
  %75 = call i32 @evbuffer_add(%struct.evbuffer* %64, i8* %68, i32 %74)
  %76 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %77 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %63
  %81 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %82 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %83 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @evbuffer_add_printf(%struct.evbuffer* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %80, %63
  %87 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %88 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %93 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 47
  br i1 %98, label %99, label %108

99:                                               ; preds = %91
  %100 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %101 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %182

108:                                              ; preds = %99, %91, %86
  br label %109

109:                                              ; preds = %108, %45
  %110 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %111 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %116 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %117 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %120 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strlen(i8* %121)
  %123 = trunc i64 %122 to i32
  %124 = call i32 @evbuffer_add(%struct.evbuffer* %115, i8* %118, i32 %123)
  br label %125

125:                                              ; preds = %114, %109
  %126 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %127 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %125
  %131 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %132 = call i32 @evbuffer_add(%struct.evbuffer* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %133 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %134 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %135 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %139 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = call i64 @strlen(i8* %141)
  %143 = trunc i64 %142 to i32
  %144 = call i32 @evbuffer_add(%struct.evbuffer* %133, i8* %137, i32 %143)
  br label %145

145:                                              ; preds = %130, %125
  %146 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %147 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %145
  %151 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %152 = call i32 @evbuffer_add(%struct.evbuffer* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %153 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %154 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %155 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.evhttp_uri*, %struct.evhttp_uri** %5, align 8
  %159 = getelementptr inbounds %struct.evhttp_uri, %struct.evhttp_uri* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to i8*
  %162 = call i64 @strlen(i8* %161)
  %163 = trunc i64 %162 to i32
  %164 = call i32 @evbuffer_add(%struct.evbuffer* %153, i8* %157, i32 %163)
  br label %165

165:                                              ; preds = %150, %145
  %166 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %167 = call i32 @evbuffer_add(%struct.evbuffer* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %168 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %169 = call i64 @evbuffer_get_length(%struct.evbuffer* %168)
  store i64 %169, i64* %9, align 8
  %170 = load i64, i64* %9, align 8
  %171 = load i64, i64* %7, align 8
  %172 = icmp ugt i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %175 = call i32 @evbuffer_free(%struct.evbuffer* %174)
  store i8* null, i8** %4, align 8
  br label %186

176:                                              ; preds = %165
  %177 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = load i64, i64* %9, align 8
  %180 = call i32 @evbuffer_remove(%struct.evbuffer* %177, i8* %178, i64 %179)
  %181 = load i8*, i8** %6, align 8
  store i8* %181, i8** %10, align 8
  br label %182

182:                                              ; preds = %176, %107
  %183 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %184 = call i32 @evbuffer_free(%struct.evbuffer* %183)
  %185 = load i8*, i8** %10, align 8
  store i8* %185, i8** %4, align 8
  br label %186

186:                                              ; preds = %182, %173, %24, %19
  %187 = load i8*, i8** %4, align 8
  ret i8* %187
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*, i32) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_remove(%struct.evbuffer*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
