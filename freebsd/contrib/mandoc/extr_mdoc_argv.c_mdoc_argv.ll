; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_mdoc_argv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_mdoc_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.roff_man = type { i32 }
%struct.mdoc_arg = type { i32, %struct.mdoc_argv* }
%struct.mdoc_argv = type { i64, i32, i32, i32*, i64 }

@MDOC_Dd = common dso_local global i32 0, align 4
@MDOC_MAX = common dso_local global i32 0, align 4
@mdocargs = common dso_local global %struct.TYPE_2__* null, align 8
@MDOC_ARG_MAX = common dso_local global i64 0, align 8
@mdoc_argnames = common dso_local global i32* null, align 8
@argvflags = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdoc_argv(%struct.roff_man* %0, i32 %1, i32 %2, %struct.mdoc_arg** %3, i32* %4, i8* %5) #0 {
  %7 = alloca %struct.roff_man*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mdoc_arg**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.mdoc_argv, align 8
  %14 = alloca %struct.mdoc_argv**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  store %struct.roff_man* %0, %struct.roff_man** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.mdoc_arg** %3, %struct.mdoc_arg*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %20 = load %struct.mdoc_arg**, %struct.mdoc_arg*** %10, align 8
  store %struct.mdoc_arg* null, %struct.mdoc_arg** %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MDOC_Dd, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MDOC_MAX, align 4
  %27 = icmp ult i32 %25, %26
  br label %28

28:                                               ; preds = %24, %6
  %29 = phi i1 [ false, %6 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdocargs, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @MDOC_Dd, align 4
  %35 = sub i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %15, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %215

43:                                               ; preds = %28
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %184, %43
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  br i1 %53, label %54, label %215

54:                                               ; preds = %46
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8* %59, i8** %16, align 8
  br label %60

60:                                               ; preds = %87, %54
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %60
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 92
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %90

86:                                               ; preds = %76, %68
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %60

90:                                               ; preds = %85, %60
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  store i8 %95, i8* %19, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i8*, i8** %12, align 8
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %98, %90
  br label %105

105:                                              ; preds = %123, %104
  %106 = load i32*, i32** %15, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %15, align 8
  %108 = load i32, i32* %106, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %13, i32 0, i32 0
  store i64 %109, i64* %110, align 8
  %111 = load i64, i64* @MDOC_ARG_MAX, align 8
  %112 = icmp ne i64 %109, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %105
  %114 = load i8*, i8** %16, align 8
  %115 = load i32*, i32** @mdoc_argnames, align 8
  %116 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %13, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @strcmp(i8* %114, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %113
  br label %124

123:                                              ; preds = %113
  br label %105

124:                                              ; preds = %122, %105
  %125 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %13, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MDOC_ARG_MAX, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load i8, i8* %19, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i8, i8* %19, align 1
  %135 = load i8*, i8** %12, align 8
  %136 = load i32, i32* %17, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  store i8 %134, i8* %139, align 1
  br label %140

140:                                              ; preds = %133, %129
  br label %215

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %150, %141
  %143 = load i8*, i8** %12, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 32
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %17, align 4
  br label %142

153:                                              ; preds = %142
  %154 = load i32, i32* %8, align 4
  %155 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %13, i32 0, i32 1
  store i32 %154, i32* %155, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %13, i32 0, i32 2
  store i32 %157, i32* %158, align 4
  %159 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %13, i32 0, i32 4
  store i64 0, i64* %159, align 8
  %160 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %13, i32 0, i32 3
  store i32* null, i32** %160, align 8
  %161 = load i32*, i32** @argvflags, align 8
  %162 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %13, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %177 [
    i32 128, label %166
    i32 130, label %171
    i32 129, label %176
  ]

166:                                              ; preds = %153
  %167 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i8*, i8** %12, align 8
  %170 = call i32 @argv_single(%struct.roff_man* %167, i32 %168, %struct.mdoc_argv* %13, i32* %17, i8* %169)
  br label %177

171:                                              ; preds = %153
  %172 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %173 = load i32, i32* %8, align 4
  %174 = load i8*, i8** %12, align 8
  %175 = call i32 @argv_multi(%struct.roff_man* %172, i32 %173, %struct.mdoc_argv* %13, i32* %17, i8* %174)
  br label %177

176:                                              ; preds = %153
  br label %177

177:                                              ; preds = %153, %176, %171, %166
  %178 = load %struct.mdoc_arg**, %struct.mdoc_arg*** %10, align 8
  %179 = load %struct.mdoc_arg*, %struct.mdoc_arg** %178, align 8
  %180 = icmp eq %struct.mdoc_arg* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = call %struct.mdoc_arg* @mandoc_calloc(i32 1, i32 16)
  %183 = load %struct.mdoc_arg**, %struct.mdoc_arg*** %10, align 8
  store %struct.mdoc_arg* %182, %struct.mdoc_arg** %183, align 8
  br label %184

184:                                              ; preds = %181, %177
  %185 = load %struct.mdoc_arg**, %struct.mdoc_arg*** %10, align 8
  %186 = load %struct.mdoc_arg*, %struct.mdoc_arg** %185, align 8
  %187 = getelementptr inbounds %struct.mdoc_arg, %struct.mdoc_arg* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 8
  store i32 %189, i32* %18, align 4
  %190 = load %struct.mdoc_arg**, %struct.mdoc_arg*** %10, align 8
  %191 = load %struct.mdoc_arg*, %struct.mdoc_arg** %190, align 8
  %192 = getelementptr inbounds %struct.mdoc_arg, %struct.mdoc_arg* %191, i32 0, i32 1
  store %struct.mdoc_argv** %192, %struct.mdoc_argv*** %14, align 8
  %193 = load %struct.mdoc_argv**, %struct.mdoc_argv*** %14, align 8
  %194 = load %struct.mdoc_argv*, %struct.mdoc_argv** %193, align 8
  %195 = load i32, i32* %18, align 4
  %196 = call %struct.mdoc_argv* @mandoc_reallocarray(%struct.mdoc_argv* %194, i32 %195, i32 32)
  %197 = load %struct.mdoc_argv**, %struct.mdoc_argv*** %14, align 8
  store %struct.mdoc_argv* %196, %struct.mdoc_argv** %197, align 8
  %198 = load %struct.mdoc_argv**, %struct.mdoc_argv*** %14, align 8
  %199 = load %struct.mdoc_argv*, %struct.mdoc_argv** %198, align 8
  %200 = load i32, i32* %18, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %199, i64 %201
  %203 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %202, i64 -1
  %204 = call i32 @memcpy(%struct.mdoc_argv* %203, %struct.mdoc_argv* %13, i32 32)
  %205 = load i32, i32* %17, align 4
  %206 = load i32*, i32** %11, align 8
  store i32 %205, i32* %206, align 4
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdocargs, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @MDOC_Dd, align 4
  %210 = sub i32 %208, %209
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  store i32* %214, i32** %15, align 8
  br label %46

215:                                              ; preds = %42, %140, %46
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @argv_single(%struct.roff_man*, i32, %struct.mdoc_argv*, i32*, i8*) #1

declare dso_local i32 @argv_multi(%struct.roff_man*, i32, %struct.mdoc_argv*, i32*, i8*) #1

declare dso_local %struct.mdoc_arg* @mandoc_calloc(i32, i32) #1

declare dso_local %struct.mdoc_argv* @mandoc_reallocarray(%struct.mdoc_argv*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.mdoc_argv*, %struct.mdoc_argv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
