; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_load_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_load_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pf_rule = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i64 }
%struct.pfioc_rule = type { i32, i32, i32, i32, i32 }

@PF_OPT_NOACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pfctl_load_rule: strlcpy\00", align 1
@MAXPATHLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DIOCADDRULE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"DIOCADDRULE\00", align 1
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@PF_OPT_VERBOSE2 = common dso_local global i32 0, align 4
@PF_OPT_NUMERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_load_rule(%struct.pfctl* %0, i8* %1, %struct.pf_rule* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfctl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pf_rule*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pfioc_rule, align 4
  %13 = alloca i32, align 4
  store %struct.pfctl* %0, %struct.pfctl** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.pf_rule* %2, %struct.pf_rule** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %15 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pf_get_ruleset_number(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %13, align 4
  %20 = call i32 @bzero(%struct.pfioc_rule* %12, i32 20)
  %21 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %22 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PF_OPT_NOACTION, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %29 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @pfctl_get_ticket(i32 %30, i32 %31, i8* %32)
  %34 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %12, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %4
  %36 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %12, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strlcpy(i32 %37, i8* %38, i32 4)
  %40 = sext i32 %39 to i64
  %41 = icmp uge i64 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  %45 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %46 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %104

49:                                               ; preds = %44
  %50 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %51 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %97

56:                                               ; preds = %49
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i64, i64* @MAXPATHLEN, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %71 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @snprintf(i8* %65, i64 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  br label %91

76:                                               ; preds = %56
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i64, i64* @MAXPATHLEN, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = sub nsw i64 %81, %83
  %85 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %86 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @snprintf(i8* %80, i64 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %76, %61
  %92 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %93 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %11, align 8
  br label %103

97:                                               ; preds = %49
  %98 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %99 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %11, align 8
  br label %103

103:                                              ; preds = %97, %91
  br label %105

104:                                              ; preds = %44
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %105

105:                                              ; preds = %104, %103
  %106 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %107 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PF_OPT_NOACTION, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %154

112:                                              ; preds = %105
  %113 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %114 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %115 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %114, i32 0, i32 0
  %116 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %117 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @pfctl_add_pool(%struct.pfctl* %113, i32* %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i32 1, i32* %5, align 4
  br label %205

122:                                              ; preds = %112
  %123 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %124 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %12, i32 0, i32 2
  store i32 %126, i32* %127, align 4
  %128 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %12, i32 0, i32 1
  %129 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %130 = call i32 @memcpy(i32* %128, %struct.pf_rule* %129, i32 4)
  %131 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %132 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = icmp ne %struct.TYPE_4__* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %122
  %136 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %12, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 @strlcpy(i32 %137, i8* %138, i32 4)
  %140 = sext i32 %139 to i64
  %141 = icmp uge i64 %140, 4
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %135, %122
  %145 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %146 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @DIOCADDRULE, align 4
  %149 = call i64 @ioctl(i32 %147, i32 %148, %struct.pfioc_rule* %12)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %144
  br label %154

154:                                              ; preds = %153, %105
  %155 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %156 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %197

161:                                              ; preds = %154
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %164 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @PF_OPT_VERBOSE2, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 @INDENT(i32 %162, i32 %170)
  %172 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %173 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %174 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = icmp ne %struct.TYPE_4__* %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %161
  %178 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %179 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %178, i32 0, i32 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  br label %184

183:                                              ; preds = %161
  br label %184

184:                                              ; preds = %183, %177
  %185 = phi i8* [ %182, %177 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %183 ]
  %186 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %187 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @PF_OPT_VERBOSE2, align 4
  %190 = and i32 %188, %189
  %191 = load %struct.pfctl*, %struct.pfctl** %6, align 8
  %192 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @PF_OPT_NUMERIC, align 4
  %195 = and i32 %193, %194
  %196 = call i32 @print_rule(%struct.pf_rule* %172, i8* %185, i32 %190, i32 %195)
  br label %197

197:                                              ; preds = %184, %154
  %198 = load i8*, i8** %7, align 8
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  store i8 0, i8* %201, align 1
  %202 = load %struct.pf_rule*, %struct.pf_rule** %8, align 8
  %203 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %202, i32 0, i32 0
  %204 = call i32 @pfctl_clear_pool(i32* %203)
  store i32 0, i32* %5, align 4
  br label %205

205:                                              ; preds = %197, %121
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @pf_get_ruleset_number(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bzero(%struct.pfioc_rule*, i32) #1

declare dso_local i32 @pfctl_get_ticket(i32, i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i64 @pfctl_add_pool(%struct.pfctl*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.pf_rule*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_rule*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @INDENT(i32, i32) #1

declare dso_local i32 @print_rule(%struct.pf_rule*, i8*, i32, i32) #1

declare dso_local i32 @pfctl_clear_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
