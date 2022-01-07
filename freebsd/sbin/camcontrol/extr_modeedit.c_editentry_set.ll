; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_editentry_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_editentry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.editentry = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i8* }

@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"value %lld is out of range for entry %s; clipping to %lld\00", align 1
@editlist_changed = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @editentry_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @editentry_set(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.editentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %202

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = call %struct.editentry* @editentry_lookup(i8* %25)
  store %struct.editentry* %26, %struct.editentry** %8, align 8
  %27 = icmp eq %struct.editentry* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOENT, align 4
  %30 = call i32 @returnerr(i32 %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.editentry*, %struct.editentry** %8, align 8
  %33 = getelementptr inbounds %struct.editentry, %struct.editentry* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EPERM, align 4
  %41 = call i32 @returnerr(i32 %40)
  br label %42

42:                                               ; preds = %39, %36, %31
  %43 = load %struct.editentry*, %struct.editentry** %8, align 8
  %44 = getelementptr inbounds %struct.editentry, %struct.editentry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %200 [
    i32 105, label %46
    i32 98, label %46
    i32 116, label %46
    i32 99, label %109
    i32 122, label %109
  ]

46:                                               ; preds = %42, %42, %42
  %47 = load %struct.editentry*, %struct.editentry** %8, align 8
  %48 = getelementptr inbounds %struct.editentry, %struct.editentry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 105
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 8, i32 1
  store i32 %52, i32* %13, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @strtoll(i8* %53, i8** %10, i32 0)
  store i64 %54, i64* %11, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32, i32* @EINVAL, align 4
  %61 = call i32 @returnerr(i32 %60)
  br label %62

62:                                               ; preds = %59, %46
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.editentry*, %struct.editentry** %8, align 8
  %66 = getelementptr inbounds %struct.editentry, %struct.editentry* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %64, %67
  %69 = zext i32 %68 to i64
  %70 = shl i64 1, %69
  %71 = sub nsw i64 %70, 1
  %72 = icmp sgt i64 %63, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = load i64, i64* %11, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %73, %62
  %77 = load i64, i64* %11, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %89

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.editentry*, %struct.editentry** %8, align 8
  %83 = getelementptr inbounds %struct.editentry, %struct.editentry* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = zext i32 %85 to i64
  %87 = shl i64 1, %86
  %88 = sub nsw i64 %87, 1
  br label %89

89:                                               ; preds = %80, %79
  %90 = phi i64 [ 0, %79 ], [ %88, %80 ]
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @warnx(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %91, i8* %92, i64 %93)
  %95 = load i64, i64* %12, align 8
  store i64 %95, i64* %11, align 8
  br label %96

96:                                               ; preds = %89, %73
  %97 = load %struct.editentry*, %struct.editentry** %8, align 8
  %98 = getelementptr inbounds %struct.editentry, %struct.editentry* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 1, i32* @editlist_changed, align 4
  br label %104

104:                                              ; preds = %103, %96
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.editentry*, %struct.editentry** %8, align 8
  %107 = getelementptr inbounds %struct.editentry, %struct.editentry* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i64 %105, i64* %108, align 8
  br label %201

109:                                              ; preds = %42, %42
  %110 = load %struct.editentry*, %struct.editentry** %8, align 8
  %111 = getelementptr inbounds %struct.editentry, %struct.editentry* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  %114 = call i8* @malloc(i32 %113)
  store i8* %114, i8** %9, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* @EX_OSERR, align 4
  %118 = call i32 @err(i32 %117, i32* null)
  br label %119

119:                                              ; preds = %116, %109
  %120 = load i8*, i8** %9, align 8
  %121 = load %struct.editentry*, %struct.editentry** %8, align 8
  %122 = getelementptr inbounds %struct.editentry, %struct.editentry* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  %125 = call i32 @bzero(i8* %120, i32 %124)
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load %struct.editentry*, %struct.editentry** %8, align 8
  %129 = getelementptr inbounds %struct.editentry, %struct.editentry* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @strncpy(i8* %126, i8* %127, i32 %130)
  %132 = load %struct.editentry*, %struct.editentry** %8, align 8
  %133 = getelementptr inbounds %struct.editentry, %struct.editentry* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 122
  br i1 %135, label %136, label %166

136:                                              ; preds = %119
  %137 = load i8*, i8** %9, align 8
  %138 = load %struct.editentry*, %struct.editentry** %8, align 8
  %139 = getelementptr inbounds %struct.editentry, %struct.editentry* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %137, i64 %141
  store i8* %142, i8** %14, align 8
  br label %143

143:                                              ; preds = %162, %136
  %144 = load i8*, i8** %14, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = icmp uge i8* %144, %145
  br i1 %146, label %147, label %165

147:                                              ; preds = %143
  %148 = load i8*, i8** %14, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 32
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i8*, i8** %14, align 8
  store i8 0, i8* %153, align 1
  br label %161

154:                                              ; preds = %147
  %155 = load i8*, i8** %14, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %165

160:                                              ; preds = %154
  br label %161

161:                                              ; preds = %160, %152
  br label %162

162:                                              ; preds = %161
  %163 = load i8*, i8** %14, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 -1
  store i8* %164, i8** %14, align 8
  br label %143

165:                                              ; preds = %159, %143
  br label %166

166:                                              ; preds = %165, %119
  %167 = load %struct.editentry*, %struct.editentry** %8, align 8
  %168 = getelementptr inbounds %struct.editentry, %struct.editentry* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = load %struct.editentry*, %struct.editentry** %8, align 8
  %173 = getelementptr inbounds %struct.editentry, %struct.editentry* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @strncmp(i8* %170, i8* %171, i32 %174)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %166
  %178 = load i8*, i8** %9, align 8
  %179 = call i32 @free(i8* %178)
  br label %201

180:                                              ; preds = %166
  %181 = load %struct.editentry*, %struct.editentry** %8, align 8
  %182 = getelementptr inbounds %struct.editentry, %struct.editentry* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load %struct.editentry*, %struct.editentry** %8, align 8
  %188 = getelementptr inbounds %struct.editentry, %struct.editentry* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load %struct.editentry*, %struct.editentry** %8, align 8
  %193 = getelementptr inbounds %struct.editentry, %struct.editentry* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  store i8* null, i8** %194, align 8
  br label %195

195:                                              ; preds = %186, %180
  %196 = load i8*, i8** %9, align 8
  %197 = load %struct.editentry*, %struct.editentry** %8, align 8
  %198 = getelementptr inbounds %struct.editentry, %struct.editentry* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  store i8* %196, i8** %199, align 8
  store i32 1, i32* @editlist_changed, align 4
  br label %201

200:                                              ; preds = %42
  br label %201

201:                                              ; preds = %200, %195, %177, %104
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %201, %23
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.editentry* @editentry_lookup(i8*) #1

declare dso_local i32 @returnerr(i32) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, i64, i8*, i64) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
