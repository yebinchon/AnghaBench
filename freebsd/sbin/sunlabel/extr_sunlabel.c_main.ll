; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun_disklabel = type { i32, i32, i32, i32, i64, %struct.sun_disklabel*, i64 }

@_PATH_BOOT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"b:BcehnrRw\00", align 1
@bflag = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@Bflag = common dso_local global i32 0, align 4
@cflag = common dso_local global i32 0, align 4
@eflag = common dso_local global i32 0, align 4
@hflag = common dso_local global i32 0, align 4
@nflag = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Obsolete -r flag ignored\0A\00", align 1
@Rflag = common dso_local global i32 0, align 4
@wflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@SUN_RAWPART = common dso_local global i64 0, align 8
@SUN_DKMAGIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"%s%s has no sun disklabel\00", align 1
@_PATH_DEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"%s: invalid label\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sun_disklabel, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8*, i8** @_PATH_BOOT, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %33, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %10, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %31 [
    i32 98, label %19
    i32 66, label %21
    i32 99, label %22
    i32 101, label %23
    i32 104, label %24
    i32 110, label %25
    i32 114, label %26
    i32 82, label %29
    i32 119, label %30
  ]

19:                                               ; preds = %17
  store i32 1, i32* @bflag, align 4
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** %7, align 8
  br label %33

21:                                               ; preds = %17
  store i32 1, i32* @Bflag, align 4
  br label %33

22:                                               ; preds = %17
  store i32 1, i32* @cflag, align 4
  br label %33

23:                                               ; preds = %17
  store i32 1, i32* @eflag, align 4
  br label %33

24:                                               ; preds = %17
  store i32 1, i32* @hflag, align 4
  br label %33

25:                                               ; preds = %17
  store i32 1, i32* @nflag, align 4
  br label %33

26:                                               ; preds = %17
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %33

29:                                               ; preds = %17
  store i32 1, i32* @Rflag, align 4
  br label %33

30:                                               ; preds = %17
  store i32 1, i32* @wflag, align 4
  br label %33

31:                                               ; preds = %17
  %32 = call i32 (...) @usage()
  br label %33

33:                                               ; preds = %31, %30, %29, %26, %25, %24, %23, %22, %21, %19
  br label %12

34:                                               ; preds = %12
  %35 = load i32, i32* @bflag, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @Bflag, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %37, %34
  %43 = load i32, i32* @nflag, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i32, i32* @Bflag, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @eflag, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @Rflag, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @wflag, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %57, %54, %51, %48, %45, %42
  %60 = load i32, i32* @eflag, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* @Rflag, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @wflag, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %62
  %69 = call i32 (...) @usage()
  br label %70

70:                                               ; preds = %68, %65, %59
  %71 = load i32, i32* @eflag, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* @hflag, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i64, i64* @optind, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  %80 = load i64, i64* @optind, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 %80
  store i8** %82, i8*** %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = call i32 (...) @usage()
  br label %87

87:                                               ; preds = %85, %74
  %88 = call i32 @bzero(%struct.sun_disklabel* %6, i32 40)
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %9, align 8
  %92 = load i32, i32* @wflag, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %132

94:                                               ; preds = %87
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 2
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97, %94
  %104 = call i32 (...) @usage()
  br label %105

105:                                              ; preds = %103, %97
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @read_label(%struct.sun_disklabel* %6, i8* %106)
  %108 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %6, i32 0, i32 5
  %109 = load %struct.sun_disklabel*, %struct.sun_disklabel** %108, align 8
  %110 = call i32 @bzero(%struct.sun_disklabel* %109, i32 8)
  %111 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %6, i32 0, i32 5
  %112 = load %struct.sun_disklabel*, %struct.sun_disklabel** %111, align 8
  %113 = load i64, i64* @SUN_RAWPART, align 8
  %114 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %112, i64 %113
  %115 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %114, i32 0, i32 6
  store i64 0, i64* %115, align 8
  %116 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %6, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %6, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %117, %119
  %121 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %6, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %120, %122
  %124 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %6, i32 0, i32 5
  %125 = load %struct.sun_disklabel*, %struct.sun_disklabel** %124, align 8
  %126 = load i64, i64* @SUN_RAWPART, align 8
  %127 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %125, i64 %126
  %128 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %127, i32 0, i32 0
  store i32 %123, i32* %128, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @write_label(%struct.sun_disklabel* %6, i8* %129, i8* %130)
  br label %221

132:                                              ; preds = %87
  %133 = load i32, i32* @eflag, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %132
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 (...) @usage()
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i8*, i8** %9, align 8
  %142 = call i32 @read_label(%struct.sun_disklabel* %6, i8* %141)
  %143 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %6, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SUN_DKMAGIC, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = load i32, i32* @_PATH_DEV, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = load i8*, i8** %9, align 8
  %152 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %150, i8* %151)
  br label %153

153:                                              ; preds = %147, %140
  %154 = load i8*, i8** %9, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @edit_label(%struct.sun_disklabel* %6, i8* %154, i8* %155)
  br label %220

157:                                              ; preds = %132
  %158 = load i32, i32* @Rflag, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %181

160:                                              ; preds = %157
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 2
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = call i32 (...) @usage()
  br label %165

165:                                              ; preds = %163, %160
  %166 = load i8**, i8*** %5, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 1
  %168 = load i8*, i8** %167, align 8
  store i8* %168, i8** %8, align 8
  %169 = load i8*, i8** %9, align 8
  %170 = call i32 @read_label(%struct.sun_disklabel* %6, i8* %169)
  %171 = load i8*, i8** %8, align 8
  %172 = call i64 @parse_label(%struct.sun_disklabel* %6, i8* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %174, %165
  %178 = load i8*, i8** %9, align 8
  %179 = load i8*, i8** %7, align 8
  %180 = call i32 @write_label(%struct.sun_disklabel* %6, i8* %178, i8* %179)
  br label %219

181:                                              ; preds = %157
  %182 = load i32, i32* @Bflag, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %181
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 @read_label(%struct.sun_disklabel* %6, i8* %185)
  %187 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %6, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @SUN_DKMAGIC, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %184
  %192 = load i32, i32* @_PATH_DEV, align 4
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to i8*
  %195 = load i8*, i8** %9, align 8
  %196 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %194, i8* %195)
  br label %197

197:                                              ; preds = %191, %184
  %198 = load i8*, i8** %9, align 8
  %199 = load i8*, i8** %7, align 8
  %200 = call i32 @write_label(%struct.sun_disklabel* %6, i8* %198, i8* %199)
  br label %218

201:                                              ; preds = %181
  %202 = load i8*, i8** %9, align 8
  %203 = call i32 @read_label(%struct.sun_disklabel* %6, i8* %202)
  %204 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %6, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SUN_DKMAGIC, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %201
  %209 = load i32, i32* @_PATH_DEV, align 4
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to i8*
  %212 = load i8*, i8** %9, align 8
  %213 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %211, i8* %212)
  br label %214

214:                                              ; preds = %208, %201
  %215 = load i8*, i8** %9, align 8
  %216 = load i32, i32* @stdout, align 4
  %217 = call i32 @print_label(%struct.sun_disklabel* %6, i8* %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %197
  br label %219

219:                                              ; preds = %218, %177
  br label %220

220:                                              ; preds = %219, %153
  br label %221

221:                                              ; preds = %220, %105
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @bzero(%struct.sun_disklabel*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @read_label(%struct.sun_disklabel*, i8*) #1

declare dso_local i32 @write_label(%struct.sun_disklabel*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i32 @edit_label(%struct.sun_disklabel*, i8*, i8*) #1

declare dso_local i64 @parse_label(%struct.sun_disklabel*, i8*) #1

declare dso_local i32 @print_label(%struct.sun_disklabel*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
