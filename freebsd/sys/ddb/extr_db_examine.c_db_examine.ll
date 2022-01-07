; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_examine.c_db_examine.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_examine.c_db_examine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_pager_quit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@db_prev = common dso_local global i32 0, align 4
@DB_STGY_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c":\09\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%+-*lr\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%-*lx\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%-*ly\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%-*ld\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%-*lu\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%-*lo\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@db_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @db_examine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_examine(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %12

12:                                               ; preds = %201, %3
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* @db_pager_quit, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %202

22:                                               ; preds = %20
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %11, align 8
  store i32 4, i32* %9, align 4
  br label %24

24:                                               ; preds = %200, %22
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %11, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %201

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %48 [
    i32 98, label %32
    i32 104, label %33
    i32 108, label %34
    i32 103, label %35
    i32 97, label %36
  ]

32:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  br label %200

33:                                               ; preds = %30
  store i32 2, i32* %9, align 4
  br label %200

34:                                               ; preds = %30
  store i32 4, i32* %9, align 4
  br label %200

35:                                               ; preds = %30
  store i32 8, i32* %9, align 4
  br label %200

36:                                               ; preds = %30
  store i32 8, i32* %9, align 4
  %37 = call i32 (...) @db_print_position()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* @db_prev, align 4
  %43 = load i32, i32* %4, align 4
  %44 = trunc i32 %43 to i8
  %45 = load i32, i32* @DB_STGY_ANY, align 4
  %46 = call i32 @db_printsym(i8 signext %44, i32 %45)
  %47 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %200

48:                                               ; preds = %30
  %49 = call i32 (...) @db_print_position()
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = trunc i32 %52 to i8
  %54 = load i32, i32* @DB_STGY_ANY, align 4
  %55 = call i32 @db_printsym(i8 signext %53, i32 %54)
  %56 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* @db_prev, align 4
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 4
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %193 [
    i32 114, label %62
    i32 120, label %73
    i32 122, label %84
    i32 100, label %95
    i32 117, label %106
    i32 111, label %117
    i32 99, label %128
    i32 115, label %149
    i32 83, label %177
    i32 105, label %187
    i32 73, label %190
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call signext i8 @db_get_value(i32 %63, i32 %64, i32 1)
  store i8 %65, i8* %8, align 1
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i8, i8* %8, align 1
  %71 = sext i8 %70 to i64
  %72 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %69, i64 %71)
  br label %194

73:                                               ; preds = %58
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call signext i8 @db_get_value(i32 %74, i32 %75, i32 0)
  store i8 %76, i8* %8, align 1
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i8, i8* %8, align 1
  %82 = sext i8 %81 to i64
  %83 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %80, i64 %82)
  br label %194

84:                                               ; preds = %58
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call signext i8 @db_get_value(i32 %85, i32 %86, i32 1)
  store i8 %87, i8* %8, align 1
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i8, i8* %8, align 1
  %93 = sext i8 %92 to i64
  %94 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %91, i64 %93)
  br label %194

95:                                               ; preds = %58
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call signext i8 @db_get_value(i32 %96, i32 %97, i32 1)
  store i8 %98, i8* %8, align 1
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i8, i8* %8, align 1
  %104 = sext i8 %103 to i64
  %105 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %102, i64 %104)
  br label %194

106:                                              ; preds = %58
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call signext i8 @db_get_value(i32 %107, i32 %108, i32 0)
  store i8 %109, i8* %8, align 1
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i8, i8* %8, align 1
  %115 = sext i8 %114 to i64
  %116 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %113, i64 %115)
  br label %194

117:                                              ; preds = %58
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call signext i8 @db_get_value(i32 %118, i32 %119, i32 0)
  store i8 %120, i8* %8, align 1
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i8, i8* %8, align 1
  %126 = sext i8 %125 to i64
  %127 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %124, i64 %126)
  br label %194

128:                                              ; preds = %58
  %129 = load i32, i32* %4, align 4
  %130 = call signext i8 @db_get_value(i32 %129, i32 1, i32 0)
  store i8 %130, i8* %8, align 1
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  %133 = load i8, i8* %8, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp sge i32 %134, 32
  br i1 %135, label %136, label %144

136:                                              ; preds = %128
  %137 = load i8, i8* %8, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sle i32 %138, 126
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i8, i8* %8, align 1
  %142 = sext i8 %141 to i32
  %143 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %142)
  br label %148

144:                                              ; preds = %136, %128
  %145 = load i8, i8* %8, align 1
  %146 = sext i8 %145 to i32
  %147 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %140
  br label %194

149:                                              ; preds = %58
  br label %150

150:                                              ; preds = %175, %149
  %151 = load i32, i32* %4, align 4
  %152 = call signext i8 @db_get_value(i32 %151, i32 1, i32 0)
  store i8 %152, i8* %8, align 1
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  %155 = load i8, i8* %8, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  br label %176

159:                                              ; preds = %150
  %160 = load i8, i8* %8, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp sge i32 %161, 32
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load i8, i8* %8, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp sle i32 %165, 126
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i8, i8* %8, align 1
  %169 = sext i8 %168 to i32
  %170 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %169)
  br label %175

171:                                              ; preds = %163, %159
  %172 = load i8, i8* %8, align 1
  %173 = sext i8 %172 to i32
  %174 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %171, %167
  br label %150

176:                                              ; preds = %158
  br label %194

177:                                              ; preds = %58
  %178 = load i32, i32* %4, align 4
  %179 = call signext i8 @db_get_value(i32 %178, i32 8, i32 0)
  store i8 %179, i8* %8, align 1
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = add i64 %181, 8
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %4, align 4
  %184 = load i8, i8* %8, align 1
  %185 = load i32, i32* @DB_STGY_ANY, align 4
  %186 = call i32 @db_printsym(i8 signext %184, i32 %185)
  br label %194

187:                                              ; preds = %58
  %188 = load i32, i32* %4, align 4
  %189 = call i32 @db_disasm(i32 %188, i32 0)
  store i32 %189, i32* %4, align 4
  br label %194

190:                                              ; preds = %58
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @db_disasm(i32 %191, i32 1)
  store i32 %192, i32* %4, align 4
  br label %194

193:                                              ; preds = %58
  br label %194

194:                                              ; preds = %193, %190, %187, %177, %176, %148, %117, %106, %95, %84, %73, %62
  %195 = call i32 (...) @db_print_position()
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i32 @db_end_line(i32 1)
  br label %199

199:                                              ; preds = %197, %194
  br label %200

200:                                              ; preds = %199, %41, %35, %34, %33, %32
  br label %24

201:                                              ; preds = %24
  br label %12

202:                                              ; preds = %20
  %203 = load i32, i32* %4, align 4
  store i32 %203, i32* @db_next, align 4
  ret void
}

declare dso_local i32 @db_print_position(...) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_printsym(i8 signext, i32) #1

declare dso_local signext i8 @db_get_value(i32, i32, i32) #1

declare dso_local i32 @db_disasm(i32, i32) #1

declare dso_local i32 @db_end_line(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
