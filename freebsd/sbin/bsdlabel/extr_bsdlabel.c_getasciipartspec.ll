; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_getasciipartspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_getasciipartspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disklabel = type { %struct.partition* }
%struct.partition = type { i64, i64, i32, i64, i64, i64 }

@part_size_type = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"line %d: %s: bad partition size\0A\00", align 1
@part_offset_type = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"line %d: %s: bad partition offset\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"line %d: missing file system type\0A\00", align 1
@fstypenames = common dso_local global i8** null, align 8
@FSMAXTYPES = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"line %d: Warning, unknown file system type %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.disklabel*, i32, i32)* @getasciipartspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getasciipartspec(i8* %0, %struct.disklabel* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.disklabel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.partition*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.disklabel* %1, %struct.disklabel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.disklabel*, %struct.disklabel** %7, align 8
  %16 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %15, i32 0, i32 0
  %17 = load %struct.partition*, %struct.partition** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.partition, %struct.partition* %17, i64 %19
  store %struct.partition* %20, %struct.partition** %10, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %14, align 8
  %21 = load i8*, i8** @part_size_type, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = load i64, i64* %14, align 8
  %27 = call i32 @NXTWORD(i8 signext %25, i64 %26)
  %28 = load i64, i64* %14, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %4
  %31 = load i8*, i8** @part_size_type, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 42
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %41)
  store i32 1, i32* %5, align 4
  br label %199

43:                                               ; preds = %30, %4
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.partition*, %struct.partition** %10, align 8
  %46 = getelementptr inbounds %struct.partition, %struct.partition* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  store i64 0, i64* %14, align 8
  %47 = load i8*, i8** @part_offset_type, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @NXTWORD(i8 signext %51, i64 %52)
  %54 = load i64, i64* %14, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %43
  %57 = load i8*, i8** @part_offset_type, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 42
  br i1 %63, label %64, label %77

64:                                               ; preds = %56
  %65 = load i8*, i8** @part_offset_type, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i32, i32* @stderr, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %74, i8* %75)
  store i32 1, i32* %5, align 4
  br label %199

77:                                               ; preds = %64, %56, %43
  %78 = load i64, i64* %14, align 8
  %79 = load %struct.partition*, %struct.partition** %10, align 8
  %80 = getelementptr inbounds %struct.partition, %struct.partition* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @stderr, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store i32 1, i32* %5, align 4
  br label %199

87:                                               ; preds = %77
  %88 = load i8*, i8** %6, align 8
  store i8* %88, i8** %11, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = call i8* @word(i8* %89)
  store i8* %90, i8** %6, align 8
  %91 = load i8**, i8*** @fstypenames, align 8
  store i8** %91, i8*** %13, align 8
  br label %92

92:                                               ; preds = %110, %87
  %93 = load i8**, i8*** %13, align 8
  %94 = load i8**, i8*** @fstypenames, align 8
  %95 = load i64, i64* @FSMAXTYPES, align 8
  %96 = getelementptr inbounds i8*, i8** %94, i64 %95
  %97 = icmp ult i8** %93, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = load i8**, i8*** %13, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i8**, i8*** %13, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @strcmp(i8* %104, i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  br label %113

109:                                              ; preds = %102, %98
  br label %110

110:                                              ; preds = %109
  %111 = load i8**, i8*** %13, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i32 1
  store i8** %112, i8*** %13, align 8
  br label %92

113:                                              ; preds = %108, %92
  %114 = load i8**, i8*** %13, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i8**, i8*** %13, align 8
  %119 = load i8**, i8*** @fstypenames, align 8
  %120 = ptrtoint i8** %118 to i64
  %121 = ptrtoint i8** %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.partition*, %struct.partition** %10, align 8
  %126 = getelementptr inbounds %struct.partition, %struct.partition* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  br label %161

127:                                              ; preds = %113
  %128 = load i8*, i8** %11, align 8
  %129 = load i8, i8* %128, align 1
  %130 = call i64 @isdigit(i8 signext %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  store i64 0, i64* @errno, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = call i64 @strtoul(i8* %133, i8** %12, i32 10)
  store i64 %134, i64* %14, align 8
  %135 = load i64, i64* @errno, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load i8*, i8** %12, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137, %132
  %143 = load i64, i64* @FSMAXTYPES, align 8
  store i64 %143, i64* %14, align 8
  br label %144

144:                                              ; preds = %142, %137
  br label %147

145:                                              ; preds = %127
  %146 = load i64, i64* @FSMAXTYPES, align 8
  store i64 %146, i64* %14, align 8
  br label %147

147:                                              ; preds = %145, %144
  %148 = load i64, i64* %14, align 8
  %149 = load i64, i64* @FSMAXTYPES, align 8
  %150 = icmp uge i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* @stderr, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %153, i8* %154)
  store i64 128, i64* %14, align 8
  br label %156

156:                                              ; preds = %151, %147
  %157 = load i64, i64* %14, align 8
  %158 = trunc i64 %157 to i32
  %159 = load %struct.partition*, %struct.partition** %10, align 8
  %160 = getelementptr inbounds %struct.partition, %struct.partition* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %156, %117
  %162 = load %struct.partition*, %struct.partition** %10, align 8
  %163 = getelementptr inbounds %struct.partition, %struct.partition* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  switch i32 %164, label %197 [
    i32 128, label %165
    i32 130, label %165
    i32 129, label %165
  ]

165:                                              ; preds = %161, %161, %161
  %166 = load i8*, i8** %6, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %196

168:                                              ; preds = %165
  %169 = load %struct.partition*, %struct.partition** %10, align 8
  %170 = getelementptr inbounds %struct.partition, %struct.partition* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @NXTNUM(i64 %171)
  %173 = load %struct.partition*, %struct.partition** %10, align 8
  %174 = getelementptr inbounds %struct.partition, %struct.partition* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %198

178:                                              ; preds = %168
  %179 = load i64, i64* %14, align 8
  %180 = call i32 @NXTNUM(i64 %179)
  %181 = load i64, i64* %14, align 8
  %182 = load %struct.partition*, %struct.partition** %10, align 8
  %183 = getelementptr inbounds %struct.partition, %struct.partition* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = udiv i64 %181, %184
  %186 = load %struct.partition*, %struct.partition** %10, align 8
  %187 = getelementptr inbounds %struct.partition, %struct.partition* %186, i32 0, i32 4
  store i64 %185, i64* %187, align 8
  %188 = load i8*, i8** %6, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %178
  %191 = load %struct.partition*, %struct.partition** %10, align 8
  %192 = getelementptr inbounds %struct.partition, %struct.partition* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @NXTNUM(i64 %193)
  br label %195

195:                                              ; preds = %190, %178
  br label %196

196:                                              ; preds = %195, %165
  br label %198

197:                                              ; preds = %161
  br label %198

198:                                              ; preds = %197, %196, %177
  store i32 0, i32* %5, align 4
  br label %199

199:                                              ; preds = %198, %83, %72, %38
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @NXTWORD(i8 signext, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i8* @word(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @NXTNUM(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
