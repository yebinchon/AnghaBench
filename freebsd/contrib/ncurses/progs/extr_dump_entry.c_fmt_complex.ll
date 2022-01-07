; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_dump_entry.c_fmt_complex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_dump_entry.c_fmt_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@tmpbuf = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: %%%c without %%? in %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"?e;\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: %%; without %%? in %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i8*, i8*, i32)* @fmt_complex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fmt_complex(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @has_params(i8* %13)
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %203, %197, %122, %4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %207

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %201 [
    i32 92, label %24
    i32 37, label %29
    i32 63, label %31
    i32 116, label %31
    i32 101, label %31
    i32 59, label %124
    i32 112, label %178
    i32 32, label %197
  ]

24:                                               ; preds = %20
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %8, align 8
  %28 = call i32 @strncpy_DYN(%struct.TYPE_7__* @tmpbuf, i8* %26, i64 1)
  br label %203

29:                                               ; preds = %20
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %10, align 4
  br label %203

31:                                               ; preds = %20, %20, %20
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %123

34:                                               ; preds = %31
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tmpbuf, i32 0, i32 0), align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tmpbuf, i32 0, i32 1), align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 10, i8* %40, align 1
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 101
  br i1 %44, label %45, label %73

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @indent_DYN(%struct.TYPE_7__* @tmpbuf, i32 %46)
  %48 = call i32 @strncpy_DYN(%struct.TYPE_7__* @tmpbuf, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1)
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strncpy_DYN(%struct.TYPE_7__* @tmpbuf, i8* %49, i64 1)
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @has_params(i8* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %45
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 37
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = call i32 @strncpy_DYN(%struct.TYPE_7__* @tmpbuf, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @indent_DYN(%struct.TYPE_7__* @tmpbuf, i32 %70)
  br label %72

72:                                               ; preds = %67, %62, %57, %45
  br label %122

73:                                               ; preds = %34
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @indent_DYN(%struct.TYPE_7__* @tmpbuf, i32 %75)
  %77 = call i32 @strncpy_DYN(%struct.TYPE_7__* @tmpbuf, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1)
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @strncpy_DYN(%struct.TYPE_7__* @tmpbuf, i8* %78, i64 1)
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  %82 = load i8, i8* %80, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 63
  br i1 %84, label %85, label %107

85:                                               ; preds = %73
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  %91 = call i8* @fmt_complex(%struct.TYPE_6__* %86, i8* %87, i8* %88, i32 %90)
  store i8* %91, i8** %8, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %85
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 37
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = call i32 @strncpy_DYN(%struct.TYPE_7__* @tmpbuf, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i32 @indent_DYN(%struct.TYPE_7__* @tmpbuf, i32 %104)
  br label %106

106:                                              ; preds = %101, %96, %85
  br label %121

107:                                              ; preds = %73
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @_nc_first_name(i32 %113)
  %115 = load i8*, i8** %8, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 (i8*, i32, ...) @_nc_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %117, i8* %118)
  br label %120

120:                                              ; preds = %110, %107
  br label %121

121:                                              ; preds = %120, %106
  br label %122

122:                                              ; preds = %121, %72
  br label %15

123:                                              ; preds = %31
  br label %203

124:                                              ; preds = %20
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %177

127:                                              ; preds = %124
  %128 = load i32, i32* @FALSE, align 4
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %170

131:                                              ; preds = %127
  %132 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tmpbuf, i32 0, i32 0), align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tmpbuf, i32 0, i32 1), align 8
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  store i8 10, i8* %136, align 1
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @indent_DYN(%struct.TYPE_7__* @tmpbuf, i32 %137)
  %139 = call i32 @strncpy_DYN(%struct.TYPE_7__* @tmpbuf, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1)
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %8, align 8
  %142 = call i32 @strncpy_DYN(%struct.TYPE_7__* @tmpbuf, i8* %140, i64 1)
  %143 = load i8*, i8** %8, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 37
  br i1 %147, label %148, label %168

148:                                              ; preds = %131
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %148
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = call i32 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8 signext %157)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tmpbuf, i32 0, i32 0), align 8
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tmpbuf, i32 0, i32 1), align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tmpbuf, i32 0, i32 1), align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  store i8 10, i8* %165, align 1
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @indent_DYN(%struct.TYPE_7__* @tmpbuf, i32 %166)
  br label %168

168:                                              ; preds = %160, %154, %148, %131
  %169 = load i8*, i8** %8, align 8
  store i8* %169, i8** %5, align 8
  br label %209

170:                                              ; preds = %127
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @_nc_first_name(i32 %173)
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 (i8*, i32, ...) @_nc_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %174, i8* %175)
  br label %177

177:                                              ; preds = %170, %124
  br label %203

178:                                              ; preds = %20
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %178
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  %185 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tmpbuf, i32 0, i32 0), align 8
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tmpbuf, i32 0, i32 1), align 8
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %185, i64 %188
  store i8 10, i8* %189, align 1
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 1
  %192 = call i32 @indent_DYN(%struct.TYPE_7__* @tmpbuf, i32 %191)
  %193 = call i32 @strncpy_DYN(%struct.TYPE_7__* @tmpbuf, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1)
  br label %194

194:                                              ; preds = %184, %181, %178
  %195 = load i32, i32* @FALSE, align 4
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* @FALSE, align 4
  store i32 %196, i32* %10, align 4
  br label %203

197:                                              ; preds = %20
  %198 = call i32 @strncpy_DYN(%struct.TYPE_7__* @tmpbuf, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 2)
  %199 = load i8*, i8** %8, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %8, align 8
  br label %15

201:                                              ; preds = %20
  %202 = load i32, i32* @FALSE, align 4
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %201, %194, %177, %123, %29, %24
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %8, align 8
  %206 = call i32 @strncpy_DYN(%struct.TYPE_7__* @tmpbuf, i8* %204, i64 1)
  br label %15

207:                                              ; preds = %15
  %208 = load i8*, i8** %8, align 8
  store i8* %208, i8** %5, align 8
  br label %209

209:                                              ; preds = %207, %168
  %210 = load i8*, i8** %5, align 8
  ret i8* %210
}

declare dso_local i32 @has_params(i8*) #1

declare dso_local i32 @strncpy_DYN(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @indent_DYN(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @_nc_warning(i8*, i32, ...) #1

declare dso_local i32 @_nc_first_name(i32) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
